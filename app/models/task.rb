# frozen_string_literal: true

# Task model
class Task < ApplicationRecord
  belongs_to :status
  validates :task_name, presence: true, length: { minimum: 10, maximum: 300 }
  validates :pr_links, presence: true, length: { minimum: 10, maximum: 100 }
  validates :hours, presence: true, numericality: { in: 0..8 }
end
