class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :url
      t.string :tags
      t.references :user, index: true
      t.references :establishment, index: true

      t.timestamps
    end
  end
end
