class CreateVandors < ActiveRecord::Migration[6.0]
  def change
    create_table :vandors do |t|
      t.string :name
      t.string :email
      t.string :address
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
