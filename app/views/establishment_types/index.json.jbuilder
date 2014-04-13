json.array!(@establishment_types) do |establishment_type|
  json.extract! establishment_type, :id, :name, :description
  json.url establishment_type_url(establishment_type, format: :json)
end
