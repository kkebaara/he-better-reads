# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Review.destroy_all
Author.destroy_all
Book.destroy_all
User.destroy_all


puts "🌱 Seeding..."


10.times do 
	Author.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, website: Faker::Internet.domain_name, genres: Faker::Book.genre, description: Faker::TvShows::Seinfeld.quote)
end

10.times do 
	Book.create(title: Faker::Book.title, description: Faker::TvShows::Seinfeld.quote, publish_date: Faker::Date.in_date_period, rating: rand(1..5), author: Author.all.sample)
end

10.times do 
	User.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name )
end

10.times do 
	Review.create(rating:rand(1..5), description: Faker::TvShows::Seinfeld.quote, book: Book.all.sample, user: User.all.sample)
end



puts "✅ Done Seeding!"