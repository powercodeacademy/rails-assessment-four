class AddRoomIdToHousePlants < ActiveRecord::Migration[5.2]
  def change
    add_reference :house_plants, :room
  end
end
