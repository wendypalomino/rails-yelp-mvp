# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '9804595095803',
    category:       'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St,Lima E1 6PQ',
    phone_number:  '890586903',
    category:        'italian'
  },

  {
    name:         'Peruanita',
    address:      'Somewhere, Cusco E1 6PQ',
    phone_number:  '8958349058304',
    category:        'japanese'
  },

  {
    name:         'Pez Loco',
    address:      '56 High St, ArequipaE1 6PQ',
    phone_number:  '8694080',
    category:        'french'
  },

  {
    name:         'Rosa Nautica',
    address:      'Shoreditch High St, Trujillo E1 6PQ',
    phone_number:  '7549303848.',
    category:        'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

