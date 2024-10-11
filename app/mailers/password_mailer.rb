class PasswordMailer < ApplicationMailer
    def reset_email
        @student = params[:student]
        @reset_url = "https://doorkeeper.vercel.app/?token=#{@student.reset_password_token}"
        # mail(to: @user.email, subject: 'Reset your password')
        mail(to: @student.email, subject: 'Reset your password')
    end
end
