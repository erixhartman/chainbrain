# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  username: "Testboy",
  email: "test@test.com",
  password: "123",
  password_confirmation: "123",
)

Company.create(
  name: "McDonalds"
)

Location.create(
  company_id: 1,
  user_id: 1,
  address: "123 Fake St"
)

Review.create(
  user_id: 1,
  location_id: 1,
  rating: 5
)

Review.create(
  user_id: 1,
  location_id: 1,
  rating: 2
)
