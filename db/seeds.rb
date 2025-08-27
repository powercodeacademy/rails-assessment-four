HousePlant.destroy_all
Room.destroy_all

rooms = [
  { name: "Power Code Academy Classroom", occupancy: 7 },
  { name: "Atlanta", occupancy: 12 },
  { name: "Cincinnati", occupancy: 9 },
  { name: "Reading", occupancy: 11 },
  { name: "Executive Boardroom", occupancy: 22 }
]

rooms.each { |room_attributes| Room.create(room_attributes) }

house_plants = [
  { plant_type: "Spider plant", height: 12 },
  { plant_type: "Devil's ivy", height: 18 },
  { plant_type: "Jade plant", height: 5 },
  { plant_type: "Sword fern", height: 8 },
  { plant_type: "Rubber fig", height: 21 },
  { plant_type: "Fiddle-leaf fig", height: 17 }
]

house_plants = house_plants.map do |plant_attributes|
  plant_attributes.merge(room_id: Room.all.sample.id)
end

house_plants.each do |plant_attributes|
  HousePlant.create(plant_attributes)
end
