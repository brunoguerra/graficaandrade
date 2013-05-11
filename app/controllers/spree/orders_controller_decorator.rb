Spree::OrdersController.class_eval do 
	respond_to :json

	def populate
      populator = Spree::OrderPopulator.new(current_order(true), current_currency)
      if populator.populate(params.slice(:products, :variants, :quantity))
        fire_event('spree.cart.add')
        fire_event('spree.order.contents_changed')
        respond_to do |format|
          format.html { redirect_to cart_path }
          format.json { render :json => {success: true, count_item: current_order.item_count} }
        end
      else
        respond_to do |format|
          flash[:error] = populator.errors.full_messages.join(" ")
          format.html { redirect_to :back }
          format.json { render :json => {:success=> false} }
        end
      end
    end
end