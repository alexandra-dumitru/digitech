json.extract! order, :id, :user_email, :product_type, :amount, :promocode, :gift_card, :created_at, :updated_at
json.url order_url(order, format: :json)
