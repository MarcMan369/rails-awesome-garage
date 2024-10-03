puts "Cleaning DB..."

Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."

owner1 = Owner.create!(nickname: "Jenoveno")
owner2 = Owner.create!(nickname: "Tiburcio")
owner3 = Owner.create!(nickname: "Zozimo")

puts "Creating cars..."

Car.create!(brand: "Ferrari", model: "F50", year: 2020, fuel: "petrol", owner_id: owner1.id)
Car.create!(brand: "Ferrari", model: "TestaRossa", year: 2019, fuel: "petrol", owner_id: owner2.id)
Car.create!(brand: "Lamborghini", model: "Temerario", year: 2023, fuel: "petrol", owner_id: owner3.id)
# Car.create!(brand: "Lamborghini", model: "Revuelto", year: 2020, fuel: "petrol", owner_id: owner4.id)  # Assuming owner4 exists
# Car.create!(brand: "Maserati", model: "MC20", year: 2020, fuel: "petrol", owner_id: owner5.id)  # Assuming owner5 exists
# Car.create!(brand: "Maserati", model: "MC20Cielo", year: 2020, fuel: "petrol", owner_id: owner6.id)  # Assuming owner6 exists

Review.create!(comment: "This Ferrari is amazing!", rating: 10, car_id: 1)
Review.create!(comment: "The Testa Rossa is fabolous!", rating: 10, car_id: 2)
Review.create!(comment: "This Lamborghini is amazing!", rating: 9, car_id: 3)
# Review.create!(comment: "It is extremely fast!", rating: 10, car_id: 4)
# Review.create!(comment: "This Maserati is amazing!", rating: 9, car_id: 5)
# Review.create!(comment: "I am speechless!", rating: 9, car_id: 6)



puts "Seed created! #{Owner.all.count} owners created & #{Car.all.count} cars created"
