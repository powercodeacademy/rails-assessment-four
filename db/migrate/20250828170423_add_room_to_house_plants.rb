class AddRoomToHousePlants < ActiveRecord::Migration[7.1]
  def change
    add_reference :house_plants, :room, foreign_key: true
  end
end
