class AddColumnToWatch < ActiveRecord::Migration[5.0]
  def change
  	add_column :watches, :color, :string
  end
end
