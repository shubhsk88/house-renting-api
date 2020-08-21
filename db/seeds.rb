# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
User.create({name:Faker::Name.name ,username:Faker::Internet.username ,password_digest:Faker::Nation.nationality})
end

House.create!([{
    title: 'Clean and fully furnished apartment. 5 min away from CN Tower',
    img_url:
      'https://res.cloudinary.com/tiny-house/image/upload/v1560641352/mock/Toronto/toronto-listing-1_exv0tf.jpg',
    description: '3210 Scotchmere Dr W, Toronto, ON, CA',
    price: 10000
   
  },
  {
   
    title: 'Luxurious home with private pool',
    img_url:
      'https://res.cloudinary.com/tiny-house/image/upload/v1560645376/mock/Los%20Angeles/los-angeles-listing-1_aikhx7.jpg',
    description: '100 Hollywood Hills Dr, Los Angeles, California',
    price: 15000,
   
  },
  {
   
    title: 'Single bedroom located in the heart of downtown San Fransisco',
    img_url:
      'https://res.cloudinary.com/tiny-house/image/upload/v1560646219/mock/San%20Fransisco/san-fransisco-listing-1_qzntl4.jpg',
    description: '200 Sunnyside Rd, San Fransisco, California',
    price: 25000,
    
  }])