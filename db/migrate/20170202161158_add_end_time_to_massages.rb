class AddEndTimeToMassages < ActiveRecord::Migration
  def change
    add_column :massages, :end_time, :datetime
  end
end
