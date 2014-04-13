class CreateCheckinsUsers < ActiveRecord::Migration
  def change
    create_table :checkins_users do |t|
      t.belongs_to :checkin, index: true
      t.belongs_to :user, index: true
    end
  end
end
