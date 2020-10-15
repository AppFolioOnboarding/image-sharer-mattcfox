# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

IMAGE_LIST = [
  ['https://i.imgur.com/CzZi90I.jpeg', 'animal, owl'],
  ['https://i.imgur.com/Syadvfl.jpg', 'animal, dog'],
  ['https://i.imgur.com/ncW0Zsh.jpg', 'animal, cat'],
  ['https://i.imgur.com/sjEXS1q.jpg', 'animal, cat']
].freeze

IMAGE_LIST.each do |url, tag_list|
  Image.create!(url: url, tag_list: tag_list)
end
