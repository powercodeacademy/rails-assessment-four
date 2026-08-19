class AddFkToHousePlants < ActiveRecord::Migration[7.1]
  def change
    add_reference :house_plants, :room
  end
end
