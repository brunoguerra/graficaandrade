class CreateSpreeCounterWithdrawal < ActiveRecord::Migration
  def change
    create_table :spree_counter_withdrawals do |t|
      t.string  :description
      t.string  :code_postal
      t.integer :state_id
      t.string  :city
      t.string  :district
      t.string  :address
      t.string  :number
      t.string  :complement
      t.string  :phone

      t.timestamps
    end
    
  end
end

