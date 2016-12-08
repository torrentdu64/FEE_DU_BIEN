class CreateMassages < ActiveRecord::Migration
  def change
    create_table :massages do |t|
      t.string :nom
      t.text :description
      t.integer :temps
      t.integer :prix

      t.timestamps null: false
    end
  end
end
