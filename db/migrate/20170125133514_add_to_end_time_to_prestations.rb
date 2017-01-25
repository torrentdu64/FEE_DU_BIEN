class AddToEndTimeToPrestations < ActiveRecord::Migration
  def change
    add_column :prestations, :end_time, :datetime
  end
end
