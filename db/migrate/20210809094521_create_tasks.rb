# frozen_string_literal: true

# Create Tasks table
class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :task_name
      t.text :pr_links
      t.float :hours
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
