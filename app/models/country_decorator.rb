Spree::Country.class_eval do
	attr_accessible :iso, :id

	before_validation(:on => :create) do
	    self.iso_name = self.name.upcase
	end
end
