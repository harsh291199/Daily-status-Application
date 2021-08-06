# frozen_string_literal: true

# Status Model
class Status < ApplicationRecord
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
  validates :date, presence: true
end
