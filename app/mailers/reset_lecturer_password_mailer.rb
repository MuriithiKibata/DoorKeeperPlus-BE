class ResetLecturerPasswordMailer < ApplicationMailer

 def reset_email
    @lecturer = params[:lecturer]
    @reset_url = "https://doorkeeper.vercel.app/?token=#{@lecturer.reset_password_token}"
    # mail(to: @user.email, subject: 'Reset your password')
    mail(to: @lecturer.email, subject: 'Reset your password')
 end

end
