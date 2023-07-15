Garden.destroy_all if Rails.env.development?
Tag.destroy_all if Rails.env.development?

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)


Tag.create!(name: "Frutifera")
Tag.create!(name: "Carnivora")
Tag.create!(name: "Venenosa")
Tag.create!(name: "Medicinal")
Tag.create!(name: "Conifera")

puts "Done seeding!"
puts "#{Garden.count} gardens created!"
puts "#{Tag.count} tags created!"


