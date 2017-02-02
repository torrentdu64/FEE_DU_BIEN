class AddStartTimeToMassages < ActiveRecord::Migration
  def change
    add_column :massages, :start_time, :datetime
  end
end
