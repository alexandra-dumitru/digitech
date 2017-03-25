class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        #params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        message  = "Account not activated. "
        message += "Check your email for the activation link."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def order_session_data
    session[:model] = params[:model]
    session[:size] = params[:size]
    session[:color] = params[:color]
    session[:price] = params[:price]
    @object = {model: session[:model], size: session[:size], color: session[:color], price: session[:price]}

    respond_to do |format|
      format.json {render json: @object}
    end
  end
end
