json.array!(@establishments) do |establishment|
  json.extract! establishment, :id, :name, :description, :rating, :address, :city, :state, :zip, :neighborhoods, :hours, :price, :phone, :bar, :facebook, :menu, :user_id, :location_id, :establishment_type_id, :checkin_id, :following_id, :favorites_id
  json.url establishment_url(establishment, format: :json)
end
