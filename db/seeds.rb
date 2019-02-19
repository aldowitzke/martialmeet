# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating. . .'
15.times do
  Offer.create(
    fight_model: Faker::Games::LeagueOfLegends.champion,
    description: Faker::Book.genre,
    address: Faker::Address.street_name,
    price: Faker::Number.between(50, 100),
    student_id: 1,
    teacher_id: 1,
    title: Faker::Book.title
    )
end
puts 'Done'
