class HousePlant < ApplicationRecord
  belongs_to :room

  validates :height, numericality: { only_integer: true }, presence: true
  validates :plant_type, presence: true
end
