class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.string :title
      t.text :restrictions
      t.date :time_start
      t.date :time_end
      t.integer :up_votes
      t.integer :down_votes
      t.integer :day
      t.date :start_date
      t.date :end_date
      t.references :user, index: true
      t.references :establishment, index: true
      t.references :deal_type, index: true

      t.timestamps
    end
  end
end
