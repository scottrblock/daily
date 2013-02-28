class RemoveAnswerFromActivity < ActiveRecord::Migration
  def up
    remove_column :activities, :answer
  end

  def down
    add_column :activities, :answer, :text
  end
end
