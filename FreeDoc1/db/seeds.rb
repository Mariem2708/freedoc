# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do 
  rdv = Appointment.create!(
  date: Faker::Time.forward(days: 23, period: :morning)
  )
end  

10.times do
  doc = Doctor.create!(
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name,
  zip_code: Faker::Number.number(digits:5)
  )
end

10.times do 
  pat = Patient.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name
  )
end  

10.times do
  spec = Specialty.create!(
    name: Faker::Job.title
  )
end

10.times do
  cit = City.create!(
    name: Faker::Address.city 
  )
end