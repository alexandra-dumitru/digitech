class AddiTunesGiftCardCodeColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :gift_card_code, :string
  end
end
