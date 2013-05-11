module Spree
	class CounterWithdrawal < ActiveRecord::Base
		attr_accessible :description, :state_id, :district, :address, 
		:phone, :code_postal, :city, :number, :complement

		belongs_to :state
	end
end