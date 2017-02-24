class CreatePromocodes < ActiveRecord::Migration[5.0]
  def change
    create_table :promocodes do |t|
      t.integer :promotype
      t.string :promovalue
      t.string :string
      t.integer :user_id

      t.timestamps
    end
  end
end
