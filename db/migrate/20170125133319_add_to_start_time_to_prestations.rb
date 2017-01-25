class AddToStartTimeToPrestations < ActiveRecord::Migration
  def change
    add_column :prestations, :start_time, :datetime
  end
end
