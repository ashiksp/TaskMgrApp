class AddIndexToTaskIdToDepends < ActiveRecord::Migration
  def change
  	add_index :depends, :task_id
  end
end
