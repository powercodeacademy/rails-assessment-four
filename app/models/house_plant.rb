class HousePlant < ApplicationRecord
  belongs_to :room

  validates :plant_type, presence: true 
  validates :height, presence: true, comparison: { greater_than_or_equal_to: 1 }
  validates :room_id, presence: true 
end
