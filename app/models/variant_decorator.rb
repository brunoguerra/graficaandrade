Spree::Variant.class_eval do
	attr_accessible :template

	before_save :delete_template_old

	def delete_template_old
		if !self.id.nil? and !self.template_was.nil? and !self.template.nil?
			path = Rails.root.join('app', 'assets', 'images', 'product_variants_template', self.template_was)
			File.delete(path) if File.exist?(path)
		end
	end
end
