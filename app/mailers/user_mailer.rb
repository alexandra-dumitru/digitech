class UserMailer < ApplicationMailer
	default from: 'dumitrualexandra91@gmail.com'
	
	def notify(user)
		@user = user
		mail(to: @user.email, subject: "Notification")
	end
end
