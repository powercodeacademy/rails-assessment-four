class AddRoomIdToHousePlants < ActiveRecord::Migration[7.1]
  def change
    add_column :house_plants, :room_id, :integer 
  end
end
