# frozen_string_literal: true

# Status Model
class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.date :date
      t.text :tasks
      t.text :pr_links
      t.float :hours

      t.timestamps
    end
  end
end
