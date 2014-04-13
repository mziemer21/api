class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :neighborhoods
      t.string :hours
      t.integer :price
      t.integer :phone
      t.boolean :bar
      t.string :facebook
      t.string :menu
      t.references :user, index: true
      t.references :location, index: true
      t.references :establishment_type, index: true
      t.references :checkin, index: true
      t.references :following, index: true
      t.references :favorites, index: true

      t.timestamps
    end
  end
end
