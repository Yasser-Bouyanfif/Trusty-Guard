# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Agent.destroy_all
User.destroy_all

user = User.new(email: "fefrfrf@gmail.com", password: "123456", category: "Security Company", name: "Batard")
user.save!

agent1 = user.agents.create(
  first_name: "Batard",
  last_name: "Batard",
  birth_date: Date.parse("2000-01-01"),
  email: "dede@gmail.com",
  phone_number: "0606060606",
  address: "Paris",
  iban: "FR5852801007941234567890185",
  status: "available"
)

agent2 = user.agents.create(
  first_name: "Jean",
  last_name: "Jean",
  birth_date: Date.parse("2000-01-01"),
  email: "jeade@gmail.com",
  phone_number: "0606060606",
  address: "Paris",
  iban: "FR5852801007941234567890185",
  status: "available"
)

agent3 = user.agents.create(
  first_name: "Pierre",
  last_name: "Pierre",
  birth_date: Date.parse("2000-01-01"),
  email: "sdzede@gmail.com",
  phone_number: "0606060606",
  address: "Paris",
  iban: "FR5852801007941234567890185",
  status: "available"
)

puts "Agents created"
