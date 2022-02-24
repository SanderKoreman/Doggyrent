# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
User.destroy_all

user1 = User.create!(email: "123@gmail.com", password: "123456", first_name: "Adam", last_name: "Jones")
user2 = User.create!(email: "456@gmail.com", password: "123456", first_name: "Kate", last_name: "Smith")

Dog.create!(name: "Madonna", user: user1, breed: "Cocopoo", description: "healthy and hardy dog! Properly trained, it adores children and behaves well in public", address: "1077AD")
Dog.create!(name: "Kokoo", user: user2, breed: "Pembroke Welsh Corgi", description: "May display aggression to other dogs. Very calm and playful.", address: "1076CD")
Dog.create!(name: "Tayson", user: user1, breed: "Samoyed", description: "Is a loyal, loving dog. Very intelligent and enthusiastic.", address: "10563JF")
Dog.create!(name: "Alfa", user: user1, breed: "Bulldog", description: "healthy and hardy dog! Properly trained, it adores children and behaves well in public", address: "10563JF")
Dog.create!(name: "Rio", user: user2, breed: "Chihuahua", description: "healthy and hardy dog! Properly trained, it adores children and behaves well in public", address: "16463ML")
Dog.create!(name: "Shankhai", user: user2, breed: "Dobermann", description: "healthy and hardy dog! Properly trained, it adores children and behaves well in public", address: "1793OP")
