class CreateDesignars < ActiveRecord::Migration[6.0]
  def change
    create_table :designars do |t|
      t.string :name
      t.string :email
      t.string :cnic
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
