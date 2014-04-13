json.array!(@rewiews) do |rewiew|
  json.extract! rewiew, :id, :title, :date, :details, :rating, :helpful, :establishment_id, :user_id
  json.url rewiew_url(rewiew, format: :json)
end
