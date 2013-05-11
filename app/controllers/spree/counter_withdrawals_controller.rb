module Spree
	class CounterWithdrawalsController < Spree::StoreController
		respond_to :html

		def index 
			@counter_withdrawals = Spree::CounterWithdrawal.order(:state_id, :description).group_by(&:state_id)
		end
	end
end