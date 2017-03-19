class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
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
