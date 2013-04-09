module Spree
  class ProductsController < Spree::StoreController
    before_filter :load_product, :only => :show
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    helper 'spree/taxons'

    respond_to :html

    def filter_variants
		res = {}
		Spree::ProductOptionType.where('product_id = ?',1).each do |product|
		    option_type = Spree::OptionType.where('id = ?', product.option_type_id).first()
		    res[option_type.presentation] = Spree::OptionValue.where('option_type_id = ?', product.option_type_id)
		end
		#puts res.to_yaml 
		puts res
	end
end
	