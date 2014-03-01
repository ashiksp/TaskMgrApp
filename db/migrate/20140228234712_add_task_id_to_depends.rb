class AddTaskIdToDepends < ActiveRecord::Migration
  def change
    add_column :depends, :task_id, :integer
  end
end
