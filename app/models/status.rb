# frozen_string_literal: true

# Status Model
class Status < ApplicationRecord
  validates :date, presence: true
  validates :tasks, presence: true, length: { minimum: 15, maximum: 300 }
  validates :pr_links, presence: true, length: { minimum: 10, maximum: 100 }
  validates :hours, presence: true, numericality: { in: 0..8 }
end
