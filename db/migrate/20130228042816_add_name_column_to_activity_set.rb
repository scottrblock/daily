class AddNameColumnToActivitySet < ActiveRecord::Migration
  def change
    add_column :activity_sets, :name, :string
  end
end
