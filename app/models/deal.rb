class Deal < ActiveRecord::Base
  belongs_to :user
  belongs_to :establishment
  belongs_to :deal_type
end
