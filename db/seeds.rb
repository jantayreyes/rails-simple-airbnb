# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creatingsnew flats "

flat_1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat_2 = {
  name: 'Lovely Room in Centre London',
  address: '11 Abbotsbury London E16 14R',
  description: 'Private room in house hosted by Edison',
  price_per_night: 88,
  number_of_guests: 2
}

flat_3 = {
  name: 'Clean Room Centre London',
  address: '21 New Holes Stradford, London 4R 2BB',
  description: 'Clean room in a Georgian house of 4 bedrooms with nice kitchen access to garden',
  price_per_night: 55,
  number_of_guests: 1
}


flat_4 = {
  name: 'Master Triple Bedroom in London Euston',
  address: '142 Tottenham Court Road London 1ZA 5P',
  description: 'Drummond Street is the perfect place for you: it is home to some of the best curry houses in Londob',
  price_per_night: 250,
  number_of_guests: 3
}

flat_5 = {
  name: 'Studio Flat Clerkenwell Farringdon Holborn',
  address: '1 Farringdon Station London 1B 2RR',
  description: 'Drummond Street is the perfect place for you: it is home to some of the best curry houses in Londob',
  price_per_night: 105,
  number_of_guests: 1
}



[ flat_1, flat_2, flat_3, flat_4, flat_5 ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{Flat.name}"
end

puts "Finished!"

