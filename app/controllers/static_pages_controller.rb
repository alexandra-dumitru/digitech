class StaticPagesController < ApplicationController
	def add_gift_cards
		@object = {model: params[:model], size: params[:size], color: params[:color], price: params[:price]}
		 respond_to do |format|
		   format.json {render json: @object}
		 end
	end
end
