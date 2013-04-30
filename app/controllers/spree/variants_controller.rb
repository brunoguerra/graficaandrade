#encoding: UTF-8
module Spree
  	class VariantsController < Spree::StoreController
    	def index
    		if !params[:template].nil?
    			file = Rails.root.join('app/assets/images/product_variants_template', params[:template])
    			if File.exist?(file)
					send_file file, :x_sendfile => true, :disposition => 'attachment'
				else
					render :json => "Arquivo Não Encontrado!"
				end
    		end
    	end
    end
end