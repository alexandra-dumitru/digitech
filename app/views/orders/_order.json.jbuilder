json.extract! order, :id, :user_email, :product_type, :product_size, :product_color, :amount, :promocode, :iphone_id, :mac_id, :watch_id, :gift_card, :created_at, :updated_at
json.url order_url(order, format: :json)
