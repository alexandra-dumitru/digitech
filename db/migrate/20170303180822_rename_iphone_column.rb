class RenameIphoneColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :iphones, :type, :phone_type
  end
end
