class AddUserToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :user_id, :integer
  end
end
