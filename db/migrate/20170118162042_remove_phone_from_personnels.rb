class RemovePhoneFromPersonnels < ActiveRecord::Migration
  def change
    remove_column :personnels, :phone, :integer
  end
end
