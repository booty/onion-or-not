# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sources = [
  {
    name: 'NBC New York',
    url: 'https://www.nbcnewyork.com/news/weird/?rss=y',
    real: true
  },
  {
    name: 'New York Post',
    url: 'https://nypost.com/tag/weird-but-true/feed/',
    real: true
  },
  {
    name: 'National Public Radio',
    url: 'https://www.npr.org/rss/rss.php?id=1146',
    real: true
  },
  {
    name: 'The Onion',
    url: 'https://www.theonion.com/rss',
    real: false
  },
  {
    name: 'The Onion: Politics',
    url: 'https://politics.theonion.com/rss',
    real: false
  }
]

sources.each do |source|
  Source.create(source)
end
