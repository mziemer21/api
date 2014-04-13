class CreateCheckinsEstablishments < ActiveRecord::Migration
  def change
    create_table :checkins_establishments do |t|
      t.belongs_to :checkin, index: true
      t.belongs_to :establishment, index: true
    end
  end
end
