class AddRoomKeyToPlant < ActiveRecord::Migration[7.1]
  def change
    add_reference :house_plants, :room, null: false
  end
end
