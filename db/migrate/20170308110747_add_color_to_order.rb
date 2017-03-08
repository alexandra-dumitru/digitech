class AddColorToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :product_color, :string
  end
end
