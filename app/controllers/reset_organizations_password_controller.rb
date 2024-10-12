class ResetOrganizationsPasswordController < ApplicationController

    def create
        @organisation = Organisation.find_by(email: params[:email])

        if @organisation 
            @organisation.generate_reset_token!
            ResetOrganisationPasswordMailer.with(organisation: @organisation).reset_email.deliver_now
            render json: {message: "Check your email for instructions on how to reset your password"}, status: :ok

        else
            render json: {message: "Email not found"}, status: :not_found
        end
    end

    def update
        @organisation = Organisation.find_by(reset_password_token: params[:token])
      
        if @organisation && @organisation.token_is_valid?
          if @organisation.reset_password!(params[:password])
            render json: { message: "Password reset was successful" }, status: :ok
          else
            render json: { message: "Password reset failed" }, status: :unprocessable_entity
          end
        else
          render json: { message: "Expired or invalid token" }, status: :not_found
        end
      end


end
