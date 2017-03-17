class UserMailer < ApplicationMailer
	default from: 'office@digitech-app.com'
	
	def notify(user, order)
		@user = user
		@order = order
		@url = 'http://localhost:3000/home.html'
		mail(to: @user.email, subject: "Thank you for your order")
	end
end
