# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

clients = [] # create empty array to store objects
3000.times do |i|
  clients << Client.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  job: Faker::Job.title,
  company: Faker::Company.name,
  address: Faker::Address.full_address,
  )
end
Client.import clients, batch_size: 1_000 # or use import!

User.create!(email: "demo@demo.com", password: "demodemo")