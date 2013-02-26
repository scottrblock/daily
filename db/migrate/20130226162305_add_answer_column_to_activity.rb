class AddAnswerColumnToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :answer, :text
  end
end
