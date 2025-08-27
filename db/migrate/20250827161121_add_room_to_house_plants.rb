class AddRoomToHousePlants < ActiveRecord::Migration[7.1]
  def change
    add_reference :house_plants, :room, null: false, foreign_key: true
  end
end

