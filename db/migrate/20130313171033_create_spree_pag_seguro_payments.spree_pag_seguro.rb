# This migration comes from spree_pag_seguro (originally 20120216223950)
class CreateSpreePagSeguroPayments < ActiveRecord::Migration
  def change
    create_table :spree_pag_seguro_payments do |t|
      t.integer  :payment_id
      t.string   :code
      t.datetime :date
    end
  end
end
