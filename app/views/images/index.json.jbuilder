json.array!(@images) do |image|
  json.extract! image, :id, :title, :url, :tags, :user_id, :establishment_id
  json.url image_url(image, format: :json)
end
