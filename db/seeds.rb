# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wine.destroy_all
User.destroy_all
Post.destroy_all

user1 = User.create!(username: 'a', email: 'a@a.com', password: 'a')
user2 = User.create!(username: 'b', email: 'b@b.com', password: 'b')


  user1.wines.create!([{
    name: "Meiomi 2014",
    kind: "Pinot Noir",
    country: "USA",
    region: "Sonoma Valley",
    rating: "92",
    description: "oaky tones with black currants", image_url: "https://www.owliquors.com/image/cache/data/wine/meiomi/meiomi-pinot-noir-bottle-500x500.jpg"
    },
    {
    name: "Opus One 2013",
    kind: "Bordeaux Red Blend",
    country: "USA",
    region: "Napa Valley",
    rating: "97",
    description: "full bodied with aromas of black currants, blueberries, floral with hints of tobacco",
    image_url: "http://f1.wine-searcher.net/images/labels/96/72/opus-one-napa-valley-usa-10059672.jpg"
    },
    {
    name: "Orin Swift Machete 2014",
    kind: "Petite Sirah",
    country: "USA",
    region: "California",
    rating: "94",
    description: "Mouthful of flavors including Earl Grey Tea, dark chocolate and toasted gingerbread", image_url: "https://www.jjbuckley.com/data/Vintage/202335/thumb_463x1162_2014-12979-750.jpg"
    }])

  user2.wines.create!([{
    name: "Kono 2015",
    kind: "Sauvignon Blanc",
    country: "New Zealand",
    region: "Marlborough",
    rating: "90",
    description: "Mix of passion fruit, lime, mango and green apple, with a light and smooth body", image_url: "http://f1.wine-searcher.net/images/labels/58/47/kono-sauvignon-blanc-marlborough-new-zealand-10735847.jpg"
    },
    {
      name: "Freakshow",
      kind: "Cabernet Sauvignon",
      country: "USA",
      region: "Lodi, California",
      rating: "91",
      description: "Dark color, spicy aromas with a luxurious dry texture",
      image_url: "http://www.luekensliquors.com/images/Micheal%20David%20Freakshow%202012%20Cabernet%20Sauvig.jpg"
    }])

  user1.posts.create!([{
    body: "Hexagon gochujang craft beer helvetica, chia skateboard butcher cold-pressed copper mug tattooed intelligentsia pug selvage mlkshk vape. Squid biodiesel you probably haven't heard of them snackwave. Squid direct trade vinyl poutine jianbing. Trust fund cornhole tote bag chia, glossier yr thundercats. Typewriter affogato small batch truffaut, meditation woke tote bag marfa tbh umami raw denim four loko. Hammock leggings la croix chillwave, portland mixtape farm-to-table four dollar toast pickled iPhone whatever. Tofu tote bag la croix four dollar toast, quinoa man braid glossier venmo aesthetic.",
    description: "Wine post 1"
    },
    {
      body: "Hexagon gochujang craft beer helvetica, chia skateboard butcher cold-pressed copper mug tattooed intelligentsia pug selvage mlkshk vape. Squid biodiesel you probably haven't heard of them snackwave. Squid direct trade vinyl poutine jianbing. Trust fund cornhole tote bag chia, glossier yr thundercats. Typewriter affogato small batch truffaut, meditation woke tote bag marfa tbh umami raw denim four loko. Hammock leggings la croix chillwave, portland mixtape farm-to-table four dollar toast pickled iPhone whatever. Tofu tote bag la croix four dollar toast, quinoa man braid glossier venmo aesthetic.",
      description: "Wine post 2"
    }])




  p "Created #{Wine.count} wines"


  # { name: "", kind: "", country: "", region: "", rating: "", description: "", image_url: ""},
