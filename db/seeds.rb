# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Granny.destroy_all
User.destroy_all
puts "Data destroyed"

paul = User.create!(email: 'p@schauss.fr', password: '123456', picture_url: 'https://avatars.githubusercontent.com/u/95611329?v=4')
puts "Paul user created"

amine = User.create!(email: 'amine@hotmail.com', password: '123456', picture_url: 'https://avatars.githubusercontent.com/u/96190452?v=4')
puts "Amine user created"

romane = Granny.create!(
  first_name: 'Romane',
  last_name: 'MAY',
  nickname: 'Tante May',
  born_at: Date.parse('1916/02/22'),
  telephone_number: '0614141414',
  email: 'may@gmail.com',
  house_number: '20',
  street: 'rue des Capucins',
  postcode: '69009',
  city: 'Lyon',
  user_id: amine.id,
  description: 'lorem ipsum dolor qkfjokjzegfoja  ekfgn eafpk kezf nndfpf,paef',
  fun_fact: 'i love tomato',
  country_name: 'France'
)
file_romane = URI.open('https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/societe/news/une-grand-mere-atteinte-d-un-cancer-devient-la-star-d-instagram-2689254/46790536-1-fre-FR/Une-grand-mere-atteinte-d-un-cancer-devient-la-star-d-Instagram.jpg')
romane.photo.attach(io: file_romane, filename: 'nes.png', content_type: 'image/png')
puts "romane created"

yvette = Granny.create!(
  first_name: 'Yvette',
  last_name: 'Delcroix',
  nickname: 'Yvette saint jean la puenta',
  born_at: Date.parse('1934/09/12'),
  telephone_number: '0614141414',
  email: 'yvette@gmail.com',
  house_number: '2',
  street: 'rue Masséna',
  postcode: '69006',
  city: 'Lyon',
  user_id: paul.id,
  description: 'My name is Yvette and i love cooking',
  fun_fact: 'I hate vegetables',
  country_name: 'France'
)
file_yvette = URI.open('https://pbs.twimg.com/media/EmOV3yCXUAExyqK?format=jpg&name=large')
yvette.photo.attach(io: file_yvette, filename: 'yvette.png', content_type: 'image/png')
puts "yvette created"

michele = Granny.create!(
  first_name: 'Michele',
  last_name: 'Martin',
  nickname: 'Mamy suzette',
  born_at: Date.parse('1916/02/22'),
  telephone_number: '0614141414',
  email: 'suzette@gmail.com',
  house_number: '2',
  street: 'rue juliette récamier',
  postcode: '69006',
  city: 'Lyon',
  user_id: amine.id,
  description: 'I am always drunk',
  fun_fact: 'i love junk food',
  country_name: 'France'
)
puts "Michele created"
file_michele = URI.open('https://external-preview.redd.it/oOAmSG2KHBAWwtiDDYveTJP8ddm8g-C12KELhKbzNtY.jpg?auto=webp&s=158ff3195794cf24de535bf3f703d45f841c5c84')
michele.photo.attach(io: file_michele, filename: 'michele.png', content_type: 'image/png')

# Granny.create!( first_name: 'Mirabel', last_name: 'Da Silva', born_at: '1938/12/11', user_id: amine.id, photo_url: 'https://www.bestofrobots.fr/blog/wp-content/uploads/sites/11/2020/12/menage-grand-mere.jpg')

# Granny.create!( first_name: 'Charlotte', last_name: 'LINLIN', born_at: '1942/08/04', user_id: amine.id, photo_url: 'https://img.cuisineaz.com/610x610/2016/08/18/i37244-10-astuces-de-grand-mere-a-connaitre-par-coeur.jpg')

puts "#{Granny.count} grannies created"

# skill = Skill.new(name: "Cooking")
# skill.granny = granny
# skill.save
# puts 'Skill "cooking" created successfully'
