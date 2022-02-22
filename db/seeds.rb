# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Granny.destroy_all
User.destroy_all
puts "Data destroyed"

amine = User.create!( email: 'aaaaaaa@hotmail.com', password: 'zhdbehbd')
puts "User created"

romane = Granny.create!(
  first_name: 'Romane',
  last_name: 'MAY',
  born_at: '1916/02/22',
  user_id: amine.id
)
puts "romane created"
file_romane = URI.open('https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/societe/news/une-grand-mere-atteinte-d-un-cancer-devient-la-star-d-instagram-2689254/46790536-1-fre-FR/Une-grand-mere-atteinte-d-un-cancer-devient-la-star-d-Instagram.jpg')
romane.photo.attach(io: file_romane, filename: 'nes.png', content_type: 'image/png')


# Granny.create!( first_name: 'Mirabel', last_name: 'Da Silva', born_at: '1938/12/11', user_id: amine.id, photo_url: 'https://www.bestofrobots.fr/blog/wp-content/uploads/sites/11/2020/12/menage-grand-mere.jpg')


# Granny.create!( first_name: 'Charlotte', last_name: 'LINLIN', born_at: '1942/08/04', user_id: amine.id, photo_url: 'https://img.cuisineaz.com/610x610/2016/08/18/i37244-10-astuces-de-grand-mere-a-connaitre-par-coeur.jpg')


puts "#{Granny.count} grannies created"
