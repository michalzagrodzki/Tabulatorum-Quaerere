# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# List of stories for welcome_page
story_list = [
    "Malta", "Cinque Terre", "Wicklow Way", "Billund", "Copenhagen", "Japan", "Tokyo", "Stuttgart", "Salzburg", "Florence", "Pisa"
]

# Loop for putting names into db
story_list.each do |name|
  Story.create(name: name)
end
