class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.order_confirmation.subject
  #

  def order_confirmation(orders)
  	@orders=orders
  	if @orders.status=='pending'
    	mail to: @orders.email,subject: "Your order is pending"
    end
  end
end
