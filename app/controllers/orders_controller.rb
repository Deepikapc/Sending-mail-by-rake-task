class OrdersController < ApplicationController
	def index
		@orders=Order.all
	end
	def new
		@order=Order.new
	end
	def create
		@order=Order.new(orders_params)
		if @order.save
			redirect_to orders_path
		else
			render new_order_path
		end
	end
	private
	def orders_params
		params[:order].permit(:name,:email,:status)
	end
end			