# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

planet_category = ['Ice planet', 'Lava planet', 'Earth analog', 'Ocean planet', 'Gas giant', 'Dwarf planet', 'Iron planet']


testuser = User.new(email: 'test@testmail.com', first_name: 'Max', last_name: 'Mustermann', password: '123test', password_confirmation: '123test')

10.times do
  Planet.create(name: Faker::Space.star, description: 'An Earth-like planet with an unusually large axial tilt causing extreme seasonal changes. Both the northern and southern hemispheres experience harsh winters, with cold nights that can last for weeks or months at a time depending on latitude. The atmosphere is composed mostly of nitrogen and oxygen, but high levels of carbon dioxide and carbon monoxide make it lethal to humans. The most advanced form of life on this planet is a type of fungus.', solar_system: Faker::Space.galaxy, category: planet_category.sample, size: rand(10000..100000), price: rand(100..999), photo: 'https://images.pexels.com/photos/87651/earth-blue-planet-globe-planet-87651.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260', user: testuser)
end
