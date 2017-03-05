json.extract! user, :id, :name, :email, :password_digest, :gift_card_code, :created_at, :updated_at
json.url user_url(user, format: :json)
