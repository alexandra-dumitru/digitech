class ApplicationMailer < ActionMailer::Base
  default from: 'office@digitech-app.com'
  layout 'mailer'

  def buy_email(user)
  	@user = user
  	mail(to: @user.email, subject: "Thank you for your purchase")
  end

  def reply_to_user

  end
end
