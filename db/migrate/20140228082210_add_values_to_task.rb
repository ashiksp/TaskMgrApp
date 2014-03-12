class AddValuesToTask < ActiveRecord::Migration

  def change
    add_column :tasks, :values, :text
  end

  
end
