class ResetStudentsPasswordController < ApplicationController

    def create
        student =  Student.find_by(email: params[:email])

        if student 
            student.generate_reset_token!
            PasswordMailer.with(student: student).reset_email.deliver_now
            render json: { message: "Check your email for instructions on how to reset your password"}, status: :ok
        else
            render json: { message: "Email not found"}, status: :not_found
        end
    end 

    def update
        token = params[:token]
        student = Student.find_by(reset_password_token: token)

        if student && student.token_is_valid?
            if student.reset_password!(params[:password])
               render json: {message: "Your password has been suceessfully reset"}, status: :ok
            else
                render json: { message: "Reset Password Failed"}, status: :unprocessable_entity
        end
    else
        render json: {message: "Expired or invalid token"}, status: :not_found
    end
  end
end
