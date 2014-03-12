class AddCategoryToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :categories, :integer, array: true, default: []
  end
end
