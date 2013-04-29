Spree::Order.class_eval do
	def confirmation_required?
		payments.map(&:payment_method).any?(&:payment_profiles_supported?)
	end
end