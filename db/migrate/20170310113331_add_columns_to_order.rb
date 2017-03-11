class AddColumnsToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :iphone_id, :integer
  	add_column :orders, :mac_id, :integer
  	add_column :orders, :watch_id, :integer
  end
end
