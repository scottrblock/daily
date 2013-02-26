class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.boolean :did

      t.timestamps
    end
  end
end
