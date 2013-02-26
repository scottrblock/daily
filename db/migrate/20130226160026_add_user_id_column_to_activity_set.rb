class AddUserIdColumnToActivitySet < ActiveRecord::Migration
  def change
    add_column :activity_sets, :user_id, :integer
  end
end
