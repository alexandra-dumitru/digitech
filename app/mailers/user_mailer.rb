class UserMailer < ApplicationMailer
	default from: 'dumitrualexandra91@gmail.com'
	
	def notify(user, order)
		@user = user
		@order = order
		@url_read_more = 'http://www.digitech-app.com/itunes-gift-cards?confirm=' + @order.id.to_s
		@url_complete_payment = 'http://www.digitech-app.com/complete-payment?confirm=' + @order.id.to_s
		mail(to: @user.email, subject: "Thank you for your order")
	end
end
