module Spree
	module Admin
		class CounterWithdrawalsController < ResourceController
			def index 
				@counter_withdrawal = Spree::CounterWithdrawal.all
			end
		end
	end
end