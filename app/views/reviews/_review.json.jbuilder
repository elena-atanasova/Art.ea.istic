json.extract! review, :id, :artwork_id, :review, :created_at, :updated_at
json.url review_url(review, format: :json)
