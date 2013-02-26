class AddActivitySetIdColumnToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :activity_set_id, :integer
  end
end
