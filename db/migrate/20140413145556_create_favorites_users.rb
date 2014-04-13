class CreateFavoritesUsers < ActiveRecord::Migration
  def change
    create_table :favorites_users do |t|
      t.belongs_to :favorites, index: true
      t.belongs_to :user, index: true
    end
  end
end
