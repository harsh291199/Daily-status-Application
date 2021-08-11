# frozen_string_literal: true

# Task model
class Task < ApplicationRecord
  belongs_to :status
  validates :task_name, presence: true, length: { in: 5..100 }
  validates :pr_links, presence: true, length: { in: 10..100 }, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :hours, presence: true, numericality: { in: 0..24 }
end
