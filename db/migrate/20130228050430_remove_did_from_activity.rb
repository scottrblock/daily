class RemoveDidFromActivity < ActiveRecord::Migration
  def up
    remove_column :activities, :did
  end

  def down
    add_column :activities, :did, :boolean
  end
end
