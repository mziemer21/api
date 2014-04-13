json.array!(@deals) do |deal|
  json.extract! deal, :id, :title, :title, :restrictions, :time_start, :time_end, :up_votes, :down_votes, :day, :start_date, :end_date, :user_id, :establishment_id, :deal_type_id
  json.url deal_url(deal, format: :json)
end
