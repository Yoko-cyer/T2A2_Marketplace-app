json.extract! list, :id, :user_id, :meal_name, :category, :description, :ingredients, :price, :place, :time, :message, :guest_number, :created_at, :updated_at
json.url list_url(list, format: :json)
