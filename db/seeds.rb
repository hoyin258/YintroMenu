# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
                        {name: "陳大文", facebook_name: "chanbigman1", password: "1",
                         password_confirmation: "1", facebook_id: "1", email: "chanbigman1@gmail.com"},
                        {name: "黃小明", facebook_name: "wongsiuming", password: "2",
                         password_confirmation: "2", facebook_id: "2", email: "wongsiuming@gmail.com"},
                    ])




mister_wok = Store.create(
    {
        name: "Mister Wok",
        phone: "6102698288",
        address: "3937 W Lincoln Hwy , Downingtown, PA 19335",
        latitude: 39.997182,
        longitude: -75.742332,
        open_hours: "",
        description: "Delicious Chinese food orders to take out in Downingtown, Thorndale",
        image: "",
    }
)

small_size = Size.create({
                             name: "Small",
                             description: "",
                         })

large_size = Size.create({
                             name: "Large",
                             description: "",
                         })


category = Category.create({
                               name: "MISTER WOK SPECIALTIES",
                               description: "with White Rice",
                               store: mister_wok,
                           })


food = Food.create({
                       menu_id: "S1",
                       name: "Sesame Chicken",
                       description: "",
                       spicy: false,
                       picture: "https://raw.githubusercontent.com/hoyin258/Misterwok/master/app/src/main/res/drawable-xhdpi/demo_1.jpg",
                       category: category,
                   })
item =Item.create([{
                        food: food,
                         size: small_size,
                         price: 7.45,
                     },
                     {
                         food: food,
                         size: large_size,
                         price: 9.45,
                     }])


food = Food.create({
                       menu_id: "S2",
                       name: "General Tso Chicken",
                       description: "",
                       spicy: true,
                       picture: "https://raw.githubusercontent.com/hoyin258/Misterwok/master/app/src/main/res/drawable-xhdpi/demo_1.jpg",
                       category: category,
                   })
item =Item.create([{
                         food: food,
                         size: small_size,
                         price: 7.45,
                     },
                     {
                         food: food,
                         size: large_size,
                         price: 9.45,
                     }])

category = Category.create({
                               name: "COMBINATION PLATTERS",
                               description: "with Pork Fried Rice & Egg Roll",
                               store: mister_wok,
                           })

category = Category.create({
                               name: "APPETIZER",
                               description: "",
                               store: mister_wok,
                           })

category = Category.create({
                               name: "SOUP",
                               description: "with Fried Noodles",
                               store: mister_wok,
                           })

category = Category.create({
                               name: "CHOW MEIN ",
                               description: "with Fried Noodles & White Rice",
                               store: mister_wok,
                           })
