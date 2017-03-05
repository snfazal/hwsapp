# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wine.destroy_all
wine = Wine.create({

  { name: "Meiomi 2014", kind: "Pinot Noir", country: "USA", region: "Sonoma Valley", rating: "92", description: "oaky tones with black currants", image_url: "https://www.owliquors.com/image/cache/data/wine/meiomi/meiomi-pinot-noir-bottle-500x500.jpg"},
  { name: "Opus One 2013", kind: "Bordeaux Red Blend", country: "USA", region: "Napa Valley", rating: "97", description: "full bodied with aromas of black currants, blueberries, floral with hints of tobacco", image_url: "http://f1.wine-searcher.net/images/labels/96/72/opus-one-napa-valley-usa-10059672.jpg"},
  { name: "", kind: "", country: "", region: "", rating: "", description: "", image_url: ""},
  { name: "", kind: "", country: "", region: "", rating: "", description: "", image_url: ""},
  { name: "", kind: "", country: "", region: "", rating: "", description: "", image_url: ""},
  { name: "", kind: "", country: "", region: "", rating: "", description: "", image_url: ""},

  })
