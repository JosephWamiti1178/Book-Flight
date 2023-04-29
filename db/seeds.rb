# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# seeds.rb

require 'faker'

# Define an array of cities and countries
# Create airports
45.times do
    Airport.create!(
      name: Faker::Address.unique.community,
      city: Faker::Address.city,
      country: Faker::Address.country
    )
  end
  
  # Create flights
  10.times do
    departure_airport = Airport.order("RANDOM()").first
    arrival_airport = Airport.order("RANDOM()").first
    departure_time = Faker::Time.between(from: DateTime.now, to: DateTime.now + 7)
    arrival_time = Faker::Time.between(from: departure_time, to: departure_time + 8)
  
    Flight.create!(
      origin: departure_airport.name,
      destination: arrival_airport.name,
      departure_time: departure_time,
      arrival_time: arrival_time
  )
  end

