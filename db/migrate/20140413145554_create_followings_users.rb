class CreateFollowingsUsers < ActiveRecord::Migration
  def change
    create_table :followings_users do |t|
      t.belongs_to :following, index: true
      t.belongs_to :user, index: true
    end
  end
end
