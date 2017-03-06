class AddTypeToWatch < ActiveRecord::Migration[5.0]
  def change
  	add_column :watches, :watch_type, :string
  end
end
