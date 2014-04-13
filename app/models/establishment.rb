class Establishment < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  belongs_to :establishment_type
  belongs_to :checkin
  belongs_to :following
  belongs_to :favorites
  has_many :deals
end
