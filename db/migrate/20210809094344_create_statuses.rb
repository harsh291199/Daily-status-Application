# frozen_string_literal: true

# Create Statuses table
class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.date :date

      t.timestamps
    end
  end
end
