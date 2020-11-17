class CreateModaldesigars < ActiveRecord::Migration[6.0]
  def change
    create_table :modaldesigars do |t|
      t.references :modal, null: false, foreign_key: true
      t.references :designar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
