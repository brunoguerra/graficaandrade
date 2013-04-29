module Spree
  	class VariantsController < Spree::StoreController
    	def index
    		if !params[:template].nil?
    			file = Rails.root.join('app/assets/images/product_variants_template', params[:template])
				send_file file, :x_sendfile => true, :disposition => 'attachment'
    		end
    	end
    end
end