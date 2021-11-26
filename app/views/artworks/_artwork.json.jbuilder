json.extract! artwork, :id, :name, :artist, :year, :description, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
