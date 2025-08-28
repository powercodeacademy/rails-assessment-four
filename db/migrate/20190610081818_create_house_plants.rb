class CreateHousePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :house_plants do |t|
      t.string :plant_type
      t.integer :height
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
