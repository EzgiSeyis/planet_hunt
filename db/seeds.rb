# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

planet_category = ['Ice planet', 'Lava planet', 'Earth analog', 'Ocean planet', 'Gas giant', 'Dwarf planet', 'Iron planet']
planet_description = ["An Earth-like planet with several large continents. Deserts cover 60 percent of the planet's landmass.",
"An Earth-like planet with an atmosphere that is not breathable to humans due to low oxygen levels and unusually large amounts of argon. There are no oceans or continents, but the surface is littered with lakes and small seas.",
"A large gas giant with an atmosphere mostly composed of methane. Wind speeds can reach 1,800 km/h in the upper atmosphere.",
"A small planet on the inner edge of its system's habitable zone. The entire planet is covered by a single giant photosynthetic organism, which the inhabitants of a nearby world worship as a god.",
"A small Earth-like planet with a rich oxygen atmosphere. Countless tiny islands are scattered throughout the planet's shallow seas, but there are no large continents."
]

testuser = User.new(email: 'test@testmail.com', first_name: 'Max', last_name: 'Mustermann', password: '123test', password_confirmation: '123test')

12.times do
  Planet.create(name: Faker::Space.star, description: planet_description.sample, solar_system: Faker::Space.galaxy, category: planet_category.sample, size: rand(10000..100000), price: rand(100..999), remote_photo_url: 'https://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg', user: testuser)
end
