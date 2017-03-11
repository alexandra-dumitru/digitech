class UserMailer < ApplicationMailer
	default from: 'office@digitech-app.com'
	def notify(user)
		@user = user
		mail(to: @user.email, subject: "Notification")
	end
end
