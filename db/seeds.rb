# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "admin",
             email: "admin@admin.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "test",
             email: "test@test.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "test2",
             email: "test2@test.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "test3",
             email: "test3@test.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "unactivated",
             email: "unactivated@test.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: false,
             activated: false)
User.create!(name:  "unactivated2",
             email: "unactivated2@test.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: false,
             activated: false)


  User.all.each do |user|
    contentt = 'k'
    k = 'k' * 70
    while contentt < k do
    user.microposts.create!(content: contentt)
    contentt += 'k'
    end
  end 

#Following relationships
  users = User.all.to_a
  User.first.followers = users.values_at(1,2,3)
  User.second.followers = users.values_at(0,2,3)
  User.third.followers = users.values_at(0,3)
    
 #Ingredients
 Ingredient.create!(name: 'Banana')
 Ingredient.create!(name: 'Apple')
 Ingredient.create!(name: 'Peanuts')
 Ingredient.create!(name: 'Milk')
 Ingredient.create!(name: 'Tomatoes')
 Ingredient.create!(name: 'Orange')









