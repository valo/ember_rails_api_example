class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :name
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
