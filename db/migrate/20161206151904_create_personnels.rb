class CreatePersonnels < ActiveRecord::Migration
  def change
    create_table :personnels do |t|
      t.string :nom
      t.string :prenom
      t.text :description
      t.string :adresse
      t.string :horaire

      t.timestamps null: false
    end
  end
end
