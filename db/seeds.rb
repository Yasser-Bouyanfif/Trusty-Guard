# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# 1. Create a user
# 2. Create an agent
# 3. Create a mission
# 4. Create an estimate
# 5. Create a team
# 6. Create a team_mission
# 7. Create an availability

puts "Cleaning database..."

Contract.destroy_all
Chatroom.destroy_all
Message.destroy_all
Estimate.destroy_all
Availability.destroy_all
Mission.destroy_all
Agent.destroy_all
User.destroy_all
