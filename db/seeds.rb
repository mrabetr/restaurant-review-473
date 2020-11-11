
puts "destroying old restaurants"
Restaurant.destroy_all

puts "creating restaurants"
50.times do
  new_restaurant = Restaurant.create!(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_address,
    stars: rand(1..5)
  )

  puts "created restaurant with id #{new_restaurant.id}"
end

puts "Finished!"
