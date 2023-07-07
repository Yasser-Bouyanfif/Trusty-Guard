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

Message.destroy_all
Chatroom.destroy_all
Contract.destroy_all
Estimate.destroy_all
Availability.destroy_all
Mission.destroy_all
Agent.destroy_all
User.destroy_all

# puts "Creating users..."

# user1 = User.create!(email: "security@gmail.com", password: "123456", address: "1 rue de la paix, Paris", phone_number: "01 23 45 67 89", name: "Société 1", siret: "12345678912345", category: "Security Company")
# user2 = User.create!(email: "customer@gmail.com", password: "123456", address: "20 rue haxo, Marseille", phone_number: "01 23 45 67 89", name: "Customer 1", siret: "12345678912345", category: "Customer Company")

# puts "Creating agents..."

# agent1 = Agent.create!(first_name: "John", last_name: "Doe", birth_date: "01/01/1990", email: "johndoe@gmail.com", phone_number: "01 23 45 67 89", address: "1 rue de la paix, Paris", iban: "FR76 3000 1007 1600 0000 0000 123", user: user1)
# agent2 = Agent.create!(first_name: "Jane", last_name: "Butcher", birth_date: "01/01/1990", email: "janedoe@gmail.com", phone_number: "01 23 45 67 89", address: "1 rue de la paix, Paris", iban: "FR76 3000 1007 1600 0000 0000 123", user: user1)
# agent3 = Agent.create!(first_name: "Jack", last_name: "Park", birth_date: "01/01/1990", email: "jackdoe@gmail.com", phone_number: "01 23 45 67 89", address: "1 rue de la paix, Paris", iban: "FR76 3000 1007 1600 0000 0000 123", user: user1)
# agent4 = Agent.create!(first_name: "Jill", last_name: "Vador", birth_date: "01/01/1990", email: "jilldoe@gmail.com", phone_number: "01 23 45 67 89", address: "1 rue de la paix, Paris", iban: "FR76 3000 1007 1600 0000 0000 123", user: user1)
# agent5 = Agent.create!(first_name: "James", last_name: "Rodriguez", birth_date: "01/01/1990", email: "jamesdoe@gmail.com", phone_number: "01 23 45 67 89", address: "1 rue de la paix, Paris", iban: "FR76 3000 1007 1600 0000 0000 123", user: user1)
# agent6 = Agent.create!(first_name: "Jenny", last_name: "Feur", birth_date: "01/01/1990", email: "jennydoe@gmail.com", phone_number: "01 23 45 67 89", address: "1 rue de la paix, Paris", iban: "FR76 3000 1007 1600 0000 0000 123", user: user1)



# puts "Creating missions..."

# mission1 = Mission.create!(comment: "Description 1", start_date: "01/01/2021", end_date: "01/02/2021", address: "1 rue de la paix, Paris", user: user2)
# mission2 = Mission.create!(comment: "Description 2", start_date: "01/01/2021", end_date: "01/02/2021", address: "1 rue de la paix, Paris", user: user2)
# mission3 = Mission.create!(comment: "Description 3", start_date: "01/01/2021", end_date: "01/02/2021", address: "1 rue de la paix, Paris", user: user2)
# mission4 = Mission.create!(comment: "Description 4", start_date: "01/01/2021", end_date: "01/02/2021", address: "1 rue de la paix, Paris", user: user2)
# mission5 = Mission.create!(comment: "Description 5", start_date: "01/01/2021", end_date: "01/02/2021", address: "1 rue de la paix, Paris", user: user2)

# puts "Creating estimates..."

# estimate1 = Estimate.create!(comment: "Comment 1", mission: mission1, user: user1)
# Chatroom.create!(estimate: estimate1)

# estimate2 = Estimate.create!(comment: "Comment 2", mission: mission2, user: user1)
# Chatroom.create!(estimate: estimate2)

# estimate3 = Estimate.create!(comment: "Comment 3", mission: mission3, user: user1)
# Chatroom.create!(estimate: estimate3)


# estimate4 = Estimate.create!(comment: "Comment 4", mission: mission4, user: user1)
# Chatroom.create!(estimate: estimate4)
