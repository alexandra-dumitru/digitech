class UserMailer < ApplicationMailer
	default from: 'office@digitech-app.com'
	
	def notify(user, order)
		@user = user
		@order = order
		@url_read_more = 'http://localhost:3000/itunes-gift-cards?confirm=' + @order.id.to_s
		@url_complete_payment = 'http://localhost:3000/complete-payment?confirm=' + @order.id.to_s
		mail(to: @user.email, subject: "Thank you for your order")
	end

	def account_activation(user)
		@user = user
		@url = 'http://localhost:3000/home?activate=' + @user.
		mail(to: @user.email, subject: "Account activation")
	end

	def password_reset(user)
		@user = user
    	mail(to: user.email, subject: "Password reset")
	end
end
