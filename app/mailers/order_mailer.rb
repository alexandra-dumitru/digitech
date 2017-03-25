class OrderMailer < ApplicationMailer

	def order_submission_email(user, order)
		@user = user
		@order = order
		@url_read_more = 'http://localhost:3000/itunes-gift-cards?confirm=' + @order.id.to_s
		@url_complete_payment = 'http://localhost:3000/complete-payment?confirm=' + @order.id.to_s
		subject = "A new order was placed by client: " + @user.name
		mail(to: 'office@digitech-app.com', subject: subject)
	end
end
