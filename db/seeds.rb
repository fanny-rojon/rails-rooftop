puts "Cleaning up DB..."
# [Rooftop, User].each(&:destroy_all)
Rooftop.destroy_all
User.destroy_all

puts "Creating Users..."
fanny = User.create!(email: "fanny@gmail.com", password: "password", first_name: "Fanny", last_name: "Rojon")

puts "Creating Rooftops..."
6.times do
  Rooftop.create!(
    owner: fanny,
    address: 'San Francisco',
    name: 'Beautiful Apartment with a View',
    description: 'Perfect for your parties and events',
    price: rand(50..150).round
  )
end

puts "Created #{User.count} user(s) and #{Rooftop.count} rooftop(s)"

# puts "Creating Users..."
# fanny = User.create!(email: "email@example.com", password: "password", first_name: "Fanny", last_name: "Rojon")
# rui = User.create!(email: "email2@example.com", password: "password", first_name: "Rui", last_name: "Freitas")


# puts "Creating Rooftops..."
# User.find_each do |user|
#   rand(2..5).times do
#     Rooftop.create!(
#       owner: user,
#       address: Faker::Address.full_address,
#       name: Faker::BossaNova.song,
#       description: Faker::Marketing.buzzwords,
#       price: rand(100..250)
#     )
#   end
# end

# puts "Created #{User.count} user(s) and #{Rooftop.count} rooftop(s)"
