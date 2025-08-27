class HousePlant < ApplicationRecord
  belongs_to :room

  validates :height, length: { minimum: 1 }
  validates :plant_type, presence: true
end
