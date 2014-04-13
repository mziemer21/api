class CreateRewiews < ActiveRecord::Migration
  def change
    create_table :rewiews do |t|
      t.string :title
      t.date :date
      t.text :details
      t.integer :rating
      t.integer :helpful
      t.references :establishment, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
