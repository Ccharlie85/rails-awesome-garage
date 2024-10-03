puts "Cleaning DB..."

Review.destroy_all
Favorite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..." # Because it's the parent!

owner1 = Owner.create!(nickname: "TommyV")
owner2 = Owner.create!(nicknae:"Charlie")

puts "Creating cars..."

Car.create!(brand: "Mercedes", model: "A-Class Hatchback", year: "2024", fuel: "petrol", owner: owner1)
Car.create!(brand: "Peugeot", overview: "308", year: "2017", fuel: "petrol", owner: owner2)

# car1 = Car.new(brand: "BMW", etc.....)
# car1.save

puts "Seed created! #{Owner.all count} owners created & #{Car.all.count}"
