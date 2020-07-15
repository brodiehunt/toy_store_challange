# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20
  User.create(
    email: "user#{i}@gmail.com",
    password: "password#{i}"
  )
  Toy.create(
    name: "Toy #{i}",
    description: "Description #{i}",
    picture: "No Picture",
    date_posted: Faker::Date.between(from: '2020-01-01', to: '2020-07-13'),
    user_id: i
  )
  puts "Created #{i} records"
end
