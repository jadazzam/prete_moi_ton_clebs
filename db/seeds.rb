# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ////////////////////////////   FAKER   //////////////////////////////
# require 'faker'

# puts 'Creating 100 fake dogs 😢🐶'
# 40.times do
#   dog = Dog.new(
#     name: Faker::Creature::Dog.name,
    # age: rand(0..15),
    # breed: Faker::Creature::Dog.breed,
    # description: Faker::Address.city,
#   )
#   dog.save!
# end
# puts 'Finished!'

Dog.destroy_all

puts 'Creating dogs...😢🐶'
dog1 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "11 Rue Lapeyrere 75018 Paris",
    description: Faker::Address.city,
    )

url1 = "https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog1.remote_photo_url = url1
dog1.save!


dog2 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "107 rue du faubourg du temple 75010 paris",
    description: Faker::Address.city,
    )

url2 = "https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog2.remote_photo_url = url2
dog2.save!


dog3 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "10 rue montcalm 75018 paris",
    description: Faker::Address.city,
    )

url3 = "https://images.pexels.com/photos/406014/pexels-photo-406014.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog3.remote_photo_url = url3
dog3.save!


dog4 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "67 boulevard ornano 75018 paris",
    description: Faker::Address.city,
    )

url4 = "https://images.pexels.com/photos/1345191/pexels-photo-1345191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog4.remote_photo_url = url4
dog4.save!


dog5 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "67 rue philippe de girard 75018 paris",
    description: Faker::Address.city,
    )

url5 = "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog5.remote_photo_url = url5
dog5.save!


dog6 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "117 Rue Saint-Maur 75011 Paris",
    description: Faker::Address.city,
    )

url6 = "https://images.pexels.com/photos/733416/pexels-photo-733416.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog6.remote_photo_url = url6
dog6.save!


dog7 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "17 Rue de Belleville 75019 Paris",
    description: Faker::Address.city,
    )

url7 = "https://images.pexels.com/photos/1254140/pexels-photo-1254140.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog7.remote_photo_url = url7
dog7.save!


dog8 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "13 Rue de Trétaigne 75018 Paris",
    description: Faker::Address.city,
    )

url8 = "https://images.pexels.com/photos/374898/pexels-photo-374898.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog8.remote_photo_url = url8
dog8.save!


dog9 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "65 Rue du Mont-Cenis 75018 Paris",
    description: Faker::Address.city,
    )

url9 = "https://images.pexels.com/photos/58997/pexels-photo-58997.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog9.remote_photo_url = url9
dog9.save!


dog10 = Dog.new(name: Faker::Creature::Dog.name,
    age: rand(0..15),
    breed: Faker::Creature::Dog.breed,
    address: "22 Rue Lapeyrere 75018 Paris",
    description: Faker::Address.city,
    )

url10 = "https://images.pexels.com/photos/460823/pexels-photo-460823.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
dog10.remote_photo_url = url10
dog10.save!

puts 'Finished!'
