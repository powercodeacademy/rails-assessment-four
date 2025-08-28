class HousePlant < ApplicationRecord
  belongs_to :room

  validates :height, presence: true
  validates :height, numericality: { greater_than_or_equal_to: 1 }
end
