Spree::State.class_eval do
	attr_accessible :id, :iso, :country_id

	def iso=(val)
		@iso = val
	end

	def iso()
		@iso
	end
end
