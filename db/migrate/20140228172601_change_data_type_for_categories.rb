class ChangeDataTypeForCategories < ActiveRecord::Migration
  def change
  	def self.up
    change_table :task do |t|
      t.change :categories, :string
    end
  end

  def self.down
    change_table :task do |t|
      t.change :categories, :integer
    end
  end
  end
end
