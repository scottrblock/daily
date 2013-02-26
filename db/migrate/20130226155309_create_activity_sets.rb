class CreateActivitySets < ActiveRecord::Migration
  def change
    create_table :activity_sets do |t|

      t.timestamps
    end
  end
end
