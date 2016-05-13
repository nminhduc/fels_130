class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user
      t.string :action
      t.integer :target_id

      t.timestamps null: false
    end
  end
end
