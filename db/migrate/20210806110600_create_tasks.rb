# frozen_string_literal: true

# Create Tasks
class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :task_name
      t.text :pr_link
      t.float :hours

      t.timestamps
    end
  end
end
