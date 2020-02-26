# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


array_of_channel = [ "Zee TV", "TV", "Big Magic", "Colors Rishtey", "Colors TV", "Dangal TV", "DD Bharati", "DD National", "Discovery Jeet", "Sony Entertainment Television", "Sony Sab", "Sony Pal", "Star Bharat" ]
array_shows_name = [""]

array_of_channel.each do |channel|
  c = Channel.create(name: channel)
  c.shows.create(name: Faker::Name.name, timing: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) )
end
puts "channel and tv shows created through seed"