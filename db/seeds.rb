puts "Seeding games..."

users_list = []
# run a loop 50 times
50.times do
  new_user = User.create(
    name: Faker::Name.first_name + ' ' + Faker::Name.last_name
  )
  users_list << new_user
end

product_list = []
50.times do
   new_product = Product.create(
        name: Faker::Commerce.product_name 
    )
  product_list << new_product
end

users_list.each do |user|
  rand(1..6).times do
    Review.create(
        comment: Faker::Lorem.sentence,
        star_rating: rand(0..5) ,
        user_id: user.id,
        product_id: product_list.sample.id
    )
  end
end
puts "Done seeding!"