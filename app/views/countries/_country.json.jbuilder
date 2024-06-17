json.extract! country, :id, :code, :name, :wines_count, :created_at, :updated_at
json.url country_url(country, format: :json)
