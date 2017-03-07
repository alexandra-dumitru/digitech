class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :user_email
      t.string :product_type
      t.decimal :amount
      t.string :promocode
      t.boolean :gift_card

      t.timestamps
    end
  end
end
