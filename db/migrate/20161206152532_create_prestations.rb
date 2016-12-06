class CreatePrestations < ActiveRecord::Migration
  def change
    create_table :prestations do |t|
      t.datetime :date
      t.references :user, index: true, foreign_key: true
      t.references :massage, index: true, foreign_key: true
      t.references :accompagnement, index: true, foreign_key: true
      t.references :personnel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
