class UserMailer < ApplicationMailer
	default from: 'office@digitech-app.com'
	
	def notify(user, order)
		@user = user
		@order = order
		@url_read_more = 'http://localhost:3000/itunes-gift-cards?confirm=' + @order.id.to_s
		@url_complete_payment = 'http://localhost:3000/complete-payment?confirm=' + @order.id.to_s
		mail(to: @user.email, subject: "Thank you for your order")
	end
end
