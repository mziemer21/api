class CreateEstablishmentsFollowings < ActiveRecord::Migration
  def change
    create_table :establishments_followings do |t|
      t.belongs_to :establishment, index: true
      t.belongs_to :following, index: true
    end
  end
end
