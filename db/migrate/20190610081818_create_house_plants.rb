class CreateHousePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :house_plants do |t|
      t.string :plant_type
      t.integer :height
      t.references :room
    end
  end
end
