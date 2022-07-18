class WelcomeMailer < ApplicationMailer
  def send_greetings_notification(user)
    @user = user

    mail to: @user.email,
         subject: "Thank You For Confirming Your Account"
  end
end
