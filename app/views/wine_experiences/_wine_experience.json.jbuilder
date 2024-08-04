json.extract! wine_experience, :id, :tasted_on, :location, :notes, :price, :rating, :user_id, :wine_vintage_id, :created_at, :updated_at
json.url wine_experience_url(wine_experience, format: :json)
