class ResetLecturesPasswordController < ApplicationController

    def create
        lecturer = Lecturer.find_by(email: params[:email])
        if lecturer 
            lecturer.generate_reset_token!
            ResetLecturerPasswordMailer.with(lecturer: lecturer).reset_email.deliver_now
            render json: {message: "Check your email for instructions on how to reset your password"}, status: :ok
        else
            render json: {message: "Email not found"}, status: :not_found
        end
    end

    def update
        lecturer = Lecturer.find_by(reset_password_token: params[:token])

        if lecturer && lecturer.token_is_valid?
            if lecturer.reset_password!(params[:password])
            render json: {message: "Password reset successfully"}, status: :ok
            else 
                render json: {message: "Password reset failed"}, status: :unprocessable_entity
            end
        else
            render json: {message: "Expired or invalid token"}, status: :not_found
        end
    end
end
