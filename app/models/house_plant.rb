class HousePlant < ApplicationRecord
  belongs_to :room

  def room_name
    room.name
  end
end
