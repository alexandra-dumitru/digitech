class ChangeColumnTypeForOrder < ActiveRecord::Migration[5.0]
  def change
  	change_column :orders, :gift_card, :text
  end
end
