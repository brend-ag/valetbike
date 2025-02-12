class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :membership_id
      t.integer :user_id
      t.integer :status
      t.string :token
      t.string :charge_id
      t.string :error_message
      t.string :customer_id
      t.integer :payment_gateway

      t.timestamps
    end
    add_money :orders, :price, currency: { present: false }
  end
end
