class AddHoursToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :hours, :integer
  end
end
