class RemoveColumnFromWatch < ActiveRecord::Migration[5.0]
  def change
  	remove_column :watches, :type
  end
end
