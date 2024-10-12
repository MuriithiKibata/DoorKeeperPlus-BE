class ResetOrganisationPasswordMailer < ApplicationMailer

    def reset_email
        @organisation = params[:organisation]
        @reset_url = "https://doorkeeper.vercel.app/?token=#{@organisation.reset_password_token}"

        mail(to: @organisation.email, subject: "Reset your password")
    end

end
