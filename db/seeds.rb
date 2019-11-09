# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Person.delete_all
Project.delete_all

30.times  do
  Person.create(name: Faker::Name.name, email:Faker::Internet.email)
  Project.create(name: Faker::Company.name, detail:Faker::Company.industry)
end
