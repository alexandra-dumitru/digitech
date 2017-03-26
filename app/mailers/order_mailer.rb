class OrderMailer < ApplicationMailer

	def order_submission_email(user, order)
		@user = user
		@order = order
		@url_read_more = 'http://mighty-tundra-38848.herokuapp.com/itunes-gift-cards?confirm=' + @order.id.to_s
		@url_complete_payment = 'http://mighty-tundra-38848.herokuapp.com/complete-payment?confirm=' + @order.id.to_s
		subject = "A new order was placed by client: " + @user.name
		mail(to: 'digitechappoffice@gmail.com', subject: subject)
	end
end
