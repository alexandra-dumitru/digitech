class CreateIphones < ActiveRecord::Migration[5.0]
  def change
    create_table :iphones do |t|
      t.string :type
      t.string :model
      t.string :string
      t.integer :size
      t.string :color
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
