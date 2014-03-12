class AddPhaseToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :phase, :string
  end
end
