class CreateTasks < ActiveRecord::Migration

    

  def change
    create_table :tasks do |t|
      t.string :taskName
      t.string :projectName
      t.text :description
      t.string :priority
      t.string :assignedto
      t.string :dependsOn

      t.timestamps
    end
  end
end
