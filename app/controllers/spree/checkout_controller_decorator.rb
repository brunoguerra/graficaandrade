Spree::CheckoutController.class_eval do 
	before_filter :clear_existing_payments, :only => :update

	def clear_existing_payments
		@order.payments.destroy_all if params[:order] && params[:order][:payments_attributes]
    end
end