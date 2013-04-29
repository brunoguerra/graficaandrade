Spree::Admin::VariantsController.class_eval do 
	def create
		params[object_name] = create_template(params[object_name])
		super
	end

	def update
		params[object_name] = create_template(params[object_name])
		super
	end

	private
	def create_template(obj)
		if !obj[:template].nil?
			path 			= Rails.root.join('app/assets/images/product_variants_template')
			new_file_name 	= Time.now().to_f().to_s+"#{File.extname(obj[:template].original_filename)}"
            File.open(path.join(new_file_name), "wb") { |f| f.write(obj[:template].read) }
            obj[:template] = new_file_name
		end
		return obj
	end

end