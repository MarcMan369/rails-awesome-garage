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
Car.create!(brand: "Lamborghini", model: "Revuelto", year: 2020, fuel: "petrol", owner_id: owner1.id)  # Assuming owner4 exists
Car.create!(brand: "Maserati", model: "MC20", year: 2020, fuel: "petrol", owner_id: owner2.id)  # Assuming owner5 exists
Car.create!(brand: "Maserati", model: "MC20Cielo", year: 2020, fuel: "petrol", owner_id: owner3.id)  # Assuming owner6 exists

puts "Seed created! #{Owner.all.count} owners created & #{Car.all.count} cars created"
