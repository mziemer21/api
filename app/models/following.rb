class Following < ActiveRecord::Base
  has_and_belongs_to_many :establishments
  has_and_belongs_to_many :users
end
