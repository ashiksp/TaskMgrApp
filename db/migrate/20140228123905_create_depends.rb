class CreateDepends < ActiveRecord::Migration
  def change
    create_table :depends do |t|
      t.string :name

      t.timestamps
    end
  end
end
