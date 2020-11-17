class CreateCarworkers < ActiveRecord::Migration[6.0]
  def change
    create_table :carworkers do |t|
      t.references :car, null: false, foreign_key: true
      t.references :worker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
