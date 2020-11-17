class CreateUservandors < ActiveRecord::Migration[6.0]
  def change
    create_table :uservandors do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vandor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
