class CreateModals < ActiveRecord::Migration[6.0]
  def change
    create_table :modals do |t|
      t.string :name
      t.string :year
      t.string :maxspeed
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
