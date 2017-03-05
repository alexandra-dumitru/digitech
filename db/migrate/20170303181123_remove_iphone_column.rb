class RemoveIphoneColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :iphones, :string, :string
  end
end
