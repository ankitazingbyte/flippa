json.extract! image, :id, :post_id, :avatar, :created_at, :updated_at
json.url image_url(image, format: :json)
