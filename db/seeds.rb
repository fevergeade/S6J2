# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

puts "creation du 1er user"
User.create(
  email: "fevergeade@yopmail.com",
  password: "123456",
  description: Faker::Hacker.say_something_smart,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

puts "creation du 2eme user"
User.create(
  email: "fevergeade.admin@yopmail.com",
  password: "123456",
  description: Faker::Hacker.say_something_smart,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
tp User.all

puts "creation du 1er Event"
Event.create(
  start_date: "2020-09-01",
  duration: 30,
  title: "Génération FREXIT !!!!!!",
  description: "lancement du parti de Génération FREXIT, afin de quitter cette union européen néo-libérale",
  price: 50,
  location: "Paris",
  admin_id: User.last.id
)

puts "creation du 2eme Event"
Event.create(
  start_date: "2020-09-02",
  duration: 30,
  title: "Génération FREXIT !!!!!!",
  description: "lancement du parti de Génération FREXIT, afin de quitter cette union européen néo-libérale",
  price: 50,
  location: "Paris",
  admin_id: User.last.id
)

puts "creation du 3eme Event"
Event.create(
  start_date: "2020-09-03",
  duration: 30,
  title: "Génération FREXIT !!!!!!",
  description: "lancement du parti de Génération FREXIT, afin de quitter cette union européen néo-libérale",
  price: 50,
  location: "Paris",
  admin_id: User.last.id
)

puts "creation du 4eme Event"
Event.create(
  start_date: "2020-09-04",
  duration: 30,
  title: "Génération FREXIT !!!!!!",
  description: "lancement du parti de Génération FREXIT, afin de quitter cette union européen néo-libérale",
  price: 50,
  location: "Paris",
  admin_id: User.last.id
)

Event.create(
  start_date: "2020-09-05",
  duration: 30,
  title: "Génération FREXIT !!!!!!",
  description: "lancement du parti de Génération FREXIT, afin de quitter cette union européen néo-libérale",
  price: 50,
  location: "Paris",
  admin_id: User.last.id
)

puts "creation lien event participant"
Attendance.create(
  stripe_customer_id: "123456",
  user_id: User.first.id,
  event_id: Event.first.id
)
puts "fin !!!!!!!!!!!!!!!"