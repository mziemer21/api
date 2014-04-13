class CreateEstablishmentTypes < ActiveRecord::Migration
  def change
    create_table :establishment_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
