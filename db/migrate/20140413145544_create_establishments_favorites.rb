class CreateEstablishmentsFavorites < ActiveRecord::Migration
  def change
    create_table :establishments_favorites do |t|
      t.belongs_to :establishment, index: true
      t.belongs_to :favorites, index: true
    end
  end
end
