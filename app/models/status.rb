# frozen_string_literal: true

# Status model
class Status < ApplicationRecord
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
  validates :date, presence: true

  def total_hours
    tasks.sum(:hours)
  end
end
