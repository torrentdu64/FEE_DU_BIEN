class AddPhoneToPersonnels < ActiveRecord::Migration
  def change
    add_column :personnels, :phone, :integer
  end
end
