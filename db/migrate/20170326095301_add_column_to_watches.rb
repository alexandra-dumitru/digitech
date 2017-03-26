class AddColumnToWatches < ActiveRecord::Migration[5.0]
  def change
  	add_column :watches, :type, :string
  end
end
