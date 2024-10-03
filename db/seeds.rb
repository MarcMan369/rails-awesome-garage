puts "Cleaning DB..."

Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..." # Because it is the parent!

owner1 = Owner.create!(nickname: Jenoveno)
owner2 = Owner.create!(nickname: Tiburcio)
owner3 = Owner.create!(nickname: Zozimo)

puts "Creating cars..."

Car.create!(brand: Ferrari, model: F50, year: 2020, fuel: petrol, owner: onwer1)
Car.create!(brand: Ferrari, model: TestaRossa, year: 2019, fuel: petrol, owner: onwer2)
Car.create!(brand: Lamborghini, model: Temerario, year: 2023, fuel: petrol, owner: onwer3)
Car.create!(brand: Lamborghini, model: Revuelto, year: 2020, fuel: petrol, owner: onwer4)
Car.create!(brand: Maserati, model: MC20, year: 2020, fuel: petrol, owner: onwer5)
Car.create!(brand: Maserati, model: MC20Cielo, year: 2020, fuel: petrol, owner: onwer6)

# car1 = Car.new(brand: "BMW, etc...")
# car1.save

puts "Seed created! #{Owner.all.count} owners created & #{Car.all.count} cars created"
