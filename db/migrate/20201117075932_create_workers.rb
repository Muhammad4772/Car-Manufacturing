class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :designation
      t.string :address
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
