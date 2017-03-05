class RenameMacColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :macs, :type, :mac_type
  end
end
