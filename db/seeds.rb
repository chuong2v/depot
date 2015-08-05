# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
products = [
  {
    title: "Beer",
    description: "beer",
    image_url: "http://pngimg.com/upload/beer_PNG2388.png",
    price: 15000.0 
  },
  {
    title: "Thuốc lá",
    description: "Thuốc lá",
    image_url: "http://vinapharm.com.vn/jscripts/tiny_mce/plugins/imagemanager/images/thuocla.jpg",
    price: 20000.0 
  }
]

products.each{|item| Product.create(
  title: item[:title],
  description: item[:description],
  image_url: item[:image_url], 
  price: item[:price]
  )
}