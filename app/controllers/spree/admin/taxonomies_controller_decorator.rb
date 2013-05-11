Spree::Admin::TaxonomiesController.class_eval do 
	def create
		params[object_name] = create_template(params[object_name])
		super
	end

	def update
		params[object_name] = create_template(params[object_name])
		super
	end

	def create_template(obj)
        if !obj[:image_path].nil?
          	path      = Rails.root.join('app/assets/images/taxonomies_template')
          	new_file_name   = Time.now().to_f().to_s+"#{File.extname(obj[:image_path].original_filename)}"
            File.open(path.join(new_file_name), "wb") { |f| f.write(obj[:image_path].read) }
            obj[:image_path]  = new_file_name
        end
        return obj
    end

end