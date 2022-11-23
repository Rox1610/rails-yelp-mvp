puts 'Nettoyons la DB...'

Restaurant.destroy_all

puts 'Création des restaurants..'

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Config.locale = 'en-CA',
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant #{restaurant.id} a été créé"
end

puts 'Tout fini!'
