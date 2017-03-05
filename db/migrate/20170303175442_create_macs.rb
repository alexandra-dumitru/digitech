class CreateMacs < ActiveRecord::Migration[5.0]
  def change
    create_table :macs do |t|
      t.string :type
      t.integer :size
      t.string :color
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
