json.extract! user, :id, :first_name, :last_name, :description, :email, :encrypted_password, :encrypted_token, :created_at, :updated_at
json.url user_url(user, format: :json)
