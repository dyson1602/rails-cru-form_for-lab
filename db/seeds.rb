# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Song.destroy_all
Artist.destroy_all
Genre.destroy_all

artist1 = Artist.create(name: Faker::Name.name, bio: Faker::Lorem.paragraph(sentence_count:3))
artist2 = Artist.create(name: Faker::Name.name, bio: Faker::Lorem.paragraph(sentence_count:3))
artist3 = Artist.create(name: Faker::Name.name, bio: Faker::Lorem.paragraph(sentence_count:3))

genre1 = Genre.create(name: "metal")
genre2 = Genre.create(name: "rock")
genre3 = Genre.create(name: "rap")

Song.create(name: Faker::Music::PearlJam.song, artist_id: artist1.id, genre_id: genre1.id)
Song.create(name: Faker::Music::PearlJam.song, artist_id: artist2.id, genre_id: genre2.id)
Song.create(name: Faker::Music::PearlJam.song, artist_id: artist3.id, genre_id: genre3.id)