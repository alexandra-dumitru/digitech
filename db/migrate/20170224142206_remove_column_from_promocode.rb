class RemoveColumnFromPromocode < ActiveRecord::Migration[5.0]
  def change
  	remove_column :promocodes, :string, :string
  end
end
