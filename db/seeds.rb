mister_wok = Store.create(
    {
        name: "Mister Wok",
        phone: "6102698288",
        address: "3937 W Lincoln Hwy , Downingtown, PA 19335",
        latitude: 39.997182,
        longitude: -75.742332,
        open_hours: "",
        description: "Delicious Chinese food orders to take out in Downingtown, Thorndale",
    }
)

super_wok = Store.create(
    {
        name: "Super Wok",
        phone: "6102800588",
        address: "467 East Uwchlan Ave, Chester Springs, PA 19425",
        latitude: 40.065879,
        longitude: -75.648546,
        open_hours: "",
        description: "Serving Fresh Quality Chinese Food for More Than 18 Years",
    }
)


mister_wok_admin =AdminUser.create({
                                       email: "misterwok.us@gmail.com",
                                       password: "12345678",
                                       password_confirmation: "12345678",
                                       store: mister_wok
                                   })

super_wok_admin =AdminUser.create({
                                      email: "superwok.us@yintro.com",
                                      password: "12345678",
                                      password_confirmation: "12345678",
                                      store: super_wok
                                  })

small_size = Size.create({name: "Small", description: "", })
regular_size = Size.create({name: "Regular", description: "", })
large_size = Size.create({name: "Large", description: "", })


specialties = Category.create({name: "Mister Wok Specialties", description: "with White Rice", store: mister_wok, })
combination_platters = Category.create({name: "Combination Platters", description: "with Pork Fried Rice & Egg Roll", store: mister_wok, })
appetizer = Category.create({name: "Appetizer", description: "", store: mister_wok, })
soup = Category.create({name: "Soup", description: "with Fried Noodles", store: mister_wok, })
chow_mein = Category.create({name: "Chow Mein", description: "with Fried Noodles & White Rice", store: mister_wok, })
chow_fun = Category.create({name: "Chow Fun", description: "Soft Flat Rice Noodles", store: mister_wok, })
mei_fun = Category.create({name: "Mei Fun", description: "Thin Rice Noodles", store: mister_wok, })
vegetarian = Category.create({name: "Vegetarian", description: "with White Rice", store: mister_wok, })
fried_rice = Category.create({name: "Fried Rice", description: "", store: mister_wok, })
egg_foo_young = Category.create({name: "Egg Foo Young", description: "with White Rice", store: mister_wok, })
lo_mein = Category.create({name: "Lo Mein", description: "", store: mister_wok, })
pork = Category.create({name: "Pork", description: "with White Rice", store: mister_wok, })
chicken = Category.create({name: "Chicken", description: "with White Rice", store: mister_wok, })
beef = Category.create({name: "Beef", description: "with White Rice", store: mister_wok, })
seafood = Category.create({name: "Seafood", description: "with White Rice", store: mister_wok, })
lunch_special = Category.create({name: "Lunch Special", description: "Mon- Sat: 11:00am - 3:00pm (with Pork Fried Rice)", store: mister_wok, })


specialties_foods = Food.create([
                                    {menu_number: "S1", name: "Sesame Chicken", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S2", name: "General Tso's Chicken ", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S3", name: "Triple Delight", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S4", name: "Four Seasons ", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S5", name: "Seafood Deligh", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S6", name: "Orange Flavor Chicken ", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S7", name: "Orange Flavor Beef", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S7", name: "Sesame Beef", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S8", name: "Dragon & Phoenix  ", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S9", name: "Shrimp, Beef, Chicken in Garlic Sauce", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S10", name: "Happy Family Dinne", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S11", name: "Honey Walnut Chicken  ", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S12", name: "Hunan Double Delight  ", description: "", spicy: true, category: specialties, }
                                ])


combo_foods = Food.create([{menu_number: "C1", name: "Chicken Chow Mein", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C2", name: "Moo Goo Gai Pan", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C3", name: "Chicken w. Chinese Veg", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C4", name: "Chicken w. Broccoli", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C5", name: "Chicken w. Garlic Sauce", description: "", spicy: true, category: combination_platters, },
                           {menu_number: "C6", name: "Pork or Chicken Egg Foo Young", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C7", name: "Sweet and Sour Chicken", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C7", name: "Sweet and Sour Pork", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C8", name: "Roast Pork or Chicken Lo Mein", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C9", name: "Pepper Steak w. Onion", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C10", name: "Beef w. Broccoli", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C11", name: "Szechuan Beef", description: "", spicy: true, category: combination_platters, },
                           {menu_number: "C12", name: "Shrimp w. Broccoli", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C13", name: "Shrimp w. Lobster Sauce", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C14", name: "Shrimp w. Chinese Vegetables", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C15", name: "Sesame w. Garlic Sauce", description: "", spicy: true, category: combination_platters, },
                           {menu_number: "C16", name: "Boneless Spare Ribs", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C17", name: "Sesame Chicken", description: "", spicy: false, category: combination_platters, },
                           {menu_number: "C18", name: " General Tso's Chicken", description: "", spicy: true, category: combination_platters, },
                           {menu_number: "C19", name: "Bourbon Chicken", description: "", spicy: false, category: combination_platters, }
                          ])

appetizer_foods = Food.create([{menu_number: "1", name: "Roast Pork Egg Roll (each)", description: "", spicy: false, category: appetizer},
                               {menu_number: "2", name: "Spring Roll (2)", description: "", spicy: false, category: appetizer},
                               {menu_number: "3", name: "Shrimp Roll (each) ", description: "", spicy: false, category: appetizer},
                               {menu_number: "3a", name: "Pizza Roll ", description: "", spicy: false, category: appetizer},
                               {menu_number: "4", name: "Fantail Shrimp (2) ", description: "", spicy: false, category: appetizer},
                               {menu_number: "5", name: "Shrimp Toast (8)   ", description: "", spicy: false, category: appetizer},
                               {menu_number: "6", name: "Fried Wonton W/ Sweet Sc (10)  ", description: "", spicy: false, category: appetizer},
                               {menu_number: "7", name: "Fried Or Steamed Dumplings (6) ", description: "", spicy: false, category: appetizer},
                               {menu_number: "8", name: "Boneless Bar-B-Q Ribs (S)  ", description: "", spicy: false, category: appetizer},
                               {menu_number: "8", name: "Boneless Bar-B-Q Ribs (L)  ", description: "", spicy: false, category: appetizer},
                               {menu_number: "9", name: "Bar-B-Q Spare Ribs (5) ", description: "", spicy: false, category: appetizer},
                               {menu_number: "9", name: "Bar-B-Q Spare Ribs (10)", description: "", spicy: false, category: appetizer},
                               {menu_number: "9a", name: "Bourbon Chicken (S)", description: "", spicy: false, category: appetizer},
                               {menu_number: "9a", name: "Bourbon Chicken (L)", description: "", spicy: false, category: appetizer},
                               {menu_number: "10", name: "Beef On Sticks (4) ", description: "", spicy: false, category: appetizer},
                               {menu_number: "10a", name: "Chicken on Stick (4)   ", description: "", spicy: false, category: appetizer},
                               {menu_number: "11", name: "Chinese Pizza  ", description: "", spicy: false, category: appetizer},
                               {menu_number: "12a", name: "Chicken Wings (4)  ", description: "", spicy: false, category: appetizer}
                              ])


soup_food =Food.create([
                           {menu_number: "13", name: "Wonton Soup", description: "", spicy: false, category: soup},
                           {menu_number: "14", name: "Egg Drop Soup", description: "", spicy: false, category: soup},
                           {menu_number: "15", name: "Chicken Rice Soup", description: "", spicy: false, category: soup},
                           {menu_number: "15", name: "Chicken Noodle Soup", description: "", spicy: false, category: soup},
                           {menu_number: "16", name: "Tofu Vegetable Soup", description: "", spicy: false, category: soup},
                           {menu_number: "17", name: "Wonton Egg Drop Soup", description: "", spicy: false, category: soup},
                           {menu_number: "18", name: "Hot and Sour Soup", description: "", spicy: false, category: soup},
                           {menu_number: "19", name: "House Special Soup", description: "", spicy: false, category: soup},
                           {menu_number: "20", name: "Seafood Special Soup", description: "", spicy: false, category: soup},
                       ])

chow_mein_foods = Food.create([
                                  {menu_number: "21", name: "Chicken Chow Mein ", description: "", spicy: false, category: chow_mein},
                                  {menu_number: "22", name: "Roast Pork Chow Mein ", description: "", spicy: false, category: chow_mein},
                                  {menu_number: "23", name: "Shrimp Chow Mein ", description: "", spicy: false, category: chow_mein},
                                  {menu_number: "24", name: "Vegetable Chow Mein ", description: "", spicy: false, category: chow_mein},
                                  {menu_number: "25", name: "House Special Chow Mein ", description: "", spicy: false, category: chow_mein},
                              ])

chow_fun_foods = Food.create([
                                 {menu_number: "26", name: "Chicken Chow Fun", description: "", spicy: false, category: chow_fun},
                                 {menu_number: "27", name: "Roast Pork Chow Fun", description: "", spicy: false, category: chow_fun},
                                 {menu_number: "28", name: "Beef Chow Fun", description: "", spicy: false, category: chow_fun},
                                 {menu_number: "29", name: "Shrimp Chow Fun", description: "", spicy: false, category: chow_fun},
                                 {menu_number: "30", name: "Vegetable Chow Fun", description: "", spicy: false, category: chow_fun},
                                 {menu_number: "31", name: "House Special Chow Fun", description: "", spicy: false, category: chow_fun},
                             ])

mei_fun_foods = Food.create([
                                {menu_number: "26", name: "Chicken Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "27", name: "Roast Pork Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "28", name: "Beef Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "29", name: "Shrimp Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "30", name: "Vegetable Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "31", name: "House Special Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "32", name: "Singapore Mei Fun ", description: "", spicy: true, category: mei_fun},
                            ])

veg_foods = Food.create([
                            {menu_number: "33", name: "Vegetable Delight ", description: "", spicy: false, category: vegetarian},
                            {menu_number: "34", name: "Bean Curd Home Style ", description: "", spicy: false, category: vegetarian},
                            {menu_number: "35", name: "Moo Shu Vegetable(w. 8 pancakes) ", description: "", spicy: false, category: vegetarian},
                            {menu_number: "36", name: "Bean Curd Szechuan Style ", description: "", spicy: true, category: vegetarian},
                            {menu_number: "37", name: "Broccoli W. Garlic Sauce ", description: "", spicy: true, category: vegetarian},
                            {menu_number: "38", name: "Green Bean w. Garlic or Brown Sauce. ", description: "", spicy: true, category: vegetarian},
                            {menu_number: "39", name: "Sesame Tofu", description: "", spicy: false, category: vegetarian},
                            {menu_number: "39", name: "General Tsos Tofu", description: "", spicy: true, category: vegetarian},
                        ])

fried_rice_foods = Food.create([
                                   {menu_number: "40", name: "Roast Pork Fried Rice ", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "41", name: "Chicken Fried Rice ", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "42", name: "Beef Fried Rice ", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "43", name: "Shrimp Fried Rice ", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "44", name: "Vegetable Fried Rice ", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "45", name: "Lobster Fried Rice ", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "46", name: "Young Chow Fried Rice ", description: "", spicy: false, category: fried_rice},
                               ])

egg_foo_young_foods = Food.create([
                                      {menu_number: "47", name: "Vegetable Egg Foo Young ", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "48", name: "Roast Pork Egg Foo Young ", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "49", name: "Chicken Egg Foo Young ", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "50", name: "Beef Egg Foo Young ", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "51", name: "Shrimp Egg Foo Young ", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "52", name: "House Special Egg Foo Young ", description: "", spicy: false, category: egg_foo_young},
                                  ])

lo_mein_foods = Food.create([
                                {menu_number: "53", name: "Roast Pork Lo Mein ", description: "", spicy: false, category: lo_mein},
                                {menu_number: "54", name: "Chicken Lo Mein ", description: "", spicy: false, category: lo_mein},
                                {menu_number: "55", name: "Beef Lo Mein ", description: "", spicy: false, category: lo_mein},
                                {menu_number: "56", name: "Shrimp Lo Mein ", description: "", spicy: false, category: lo_mein},
                                {menu_number: "57", name: "Vegetable Lo Mein ", description: "", spicy: false, category: lo_mein},
                                {menu_number: "58", name: "Seafood Lo Mein ", description: "", spicy: false, category: lo_mein},
                                {menu_number: "59", name: "Hosue Special Lo Mein ", description: "", spicy: false, category: lo_mein},
                            ])

pork_foods = Food.create([
                             {menu_number: "60", name: "Roast Pork W. Chinese Veg ", description: "", spicy: false, category: pork},
                             {menu_number: "61", name: "Roast Pork W. Broccoli ", description: "", spicy: false, category: pork},
                             {menu_number: "62", name: "Sweet and Sour Pork ", description: "", spicy: false, category: pork},
                             {menu_number: "63", name: "Mongolian Pork W. Scallions ", description: "", spicy: false, category: pork},
                             {menu_number: "64", name: "Moo Shu Pork ", description: "", spicy: false, category: pork},
                             {menu_number: "65", name: "Kung Pao Pork ", description: "", spicy: true, category: pork},
                             {menu_number: "66", name: "Pork W. Garlic Sauce ", description: "", spicy: true, category: pork},
                             {menu_number: "67", name: "Shredded Szechuan Pork ", description: "", spicy: true, category: pork},
                         ])

chicken_foods = Food.create([
                                {menu_number: "68", name: "Chicken W. Broccoli ", description: "", spicy: false, category: chicken},
                                {menu_number: "69", name: "Moo Goo Gai Pan ", description: "", spicy: false, category: chicken},
                                {menu_number: "70", name: "Curry Chicken ", description: "", spicy: true, category: chicken},
                                {menu_number: "71", name: "Chicken W. Snow Peas ", description: "", spicy: false, category: chicken},
                                {menu_number: "72", name: "Sweet & Sour Chicken ", description: "", spicy: false, category: chicken},
                                {menu_number: "73", name: "Chicken W. Green Bean ", description: "", spicy: false, category: chicken},
                                {menu_number: "74", name: "Chicken W. Cashew Nuts ", description: "", spicy: false, category: chicken},
                                {menu_number: "75", name: "Moo Shu Chcken(w. 8 pancakes). ", description: "", spicy: false, category: chicken},
                                {menu_number: "76", name: "Kung Pao Chicken ", description: "", spicy: true, category: chicken},
                                {menu_number: "77", name: "Chicken W. Garlic Sauce ", description: "", spicy: true, category: chicken},
                                {menu_number: "78", name: "Szechuan Chicken ", description: "", spicy: true, category: chicken},
                                {menu_number: "79", name: "Lemon Chicken ", description: "", spicy: false, category: chicken},
                                {menu_number: "80", name: "Hunan Chicken ", description: "", spicy: true, category: chicken},
                                {menu_number: "81", name: "Chicken W. Chinese Veg ", description: "", spicy: false, category: chicken},
                            ])

beef_foods = Food.create([
                             {menu_number: "82", name: "Pepper Steak W. Onion ", description: "", spicy: false, category: beef},
                             {menu_number: "83", name: "Beef W. Broccoli ", description: "", spicy: false, category: beef},
                             {menu_number: "84", name: "Beef W. Chinese Vegetable ", description: "", spicy: false, category: beef},
                             {menu_number: "85", name: "Beef W. Mushroom ", description: "", spicy: false, category: beef},
                             {menu_number: "86", name: "Mongolian Beef W. Scallion ", description: "", spicy: false, category: beef},
                             {menu_number: "87", name: "Kung Pao Beef ", description: "", spicy: true, category: beef},
                             {menu_number: "88", name: "Beef W. Garlic Sauce ", description: "", spicy: true, category: beef},
                             {menu_number: "89", name: "Szechuan Beef ", description: "", spicy: true, category: beef},
                             {menu_number: "90", name: "Hunan Beef ", description: "", spicy: true, category: beef},
                             {menu_number: "91", name: "Beef W. Green Bean ", description: "", spicy: false, category: beef},
                         ])

shrimp_foods = Food.create([
                               {menu_number: "92", name: "Shrimp W. Lobster Sauce ", description: "", spicy: false, category: seafood},
                               {menu_number: "93", name: "Shrimp W. Broccoli ", description: "", spicy: false, category: seafood},
                               {menu_number: "94", name: "Shrimp W. Chinese Veg ", description: "", spicy: false, category: seafood},
                               {menu_number: "95", name: "Curry Shrimp ", description: "", spicy: true, category: seafood},
                               {menu_number: "96", name: "Shrimp W. Snow Pea Pods ", description: "", spicy: false, category: seafood},
                               {menu_number: "97", name: "Shrimp W. Cashew Nuts ", description: "", spicy: false, category: seafood},
                               {menu_number: "98", name: "Shrimp W. Green Bean ", description: "", spicy: false, category: seafood},
                               {menu_number: "99", name: "Sweet & Sour Shrimp ", description: "", spicy: false, category: seafood},
                               {menu_number: "100", name: "Kung Pao Shrimp ", description: "", spicy: true, category: seafood},
                               {menu_number: "101", name: "Shrimp W. Garlic Sauce ", description: "", spicy: true, category: seafood},
                               {menu_number: "102", name: "Szechuan Ming Shrimp ", description: "", spicy: true, category: seafood},
                               {menu_number: "103", name: "Scallops W. Garlic Sauce ", description: "", spicy: true, category: seafood},
                               {menu_number: "104", name: "Honey Walnuts Shrimp ", description: "", spicy: false, category: seafood},
                               {menu_number: "105", name: "Sesame Shrimp ", description: "", spicy: false, category: seafood},
                               {menu_number: "106", name: "General Tso's Shrimp ", description: "", spicy: true, category: seafood},
                           ])

lunch_foods = Food.create([
                              {menu_number: "L1", name: "Chicken Chow Mein ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L2", name: "Roast Pork Egg Foo Young ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L3", name: "Vegetable Delight ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L4", name: "Roast Pork Or Chicken Lo Mein ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L5", name: "Sweet and Sour Pork Or Chicken ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L6", name: "Moo Goo Gai Pan ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L7", name: "Chicken Garlic Sauce ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L8", name: "Chicken With Cashew Nuts ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L9", name: "Kung Pao Chicken ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L10", name: "Chicken With Chinese Vegetables ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L11", name: "Chicken With Green Bean ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L12", name: "Szechuan Chicken ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L13", name: "Hunan Chicken ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L14", name: "Chicken With Broccoli ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L15", name: "Shrimp Chow Mein ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L16", name: "Shrimp Lo Mein ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L17", name: "Pepper Steak With Onion ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L18", name: "Beef With Broccoli ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L19", name: "Hunan Beef ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L20", name: "Beef W. Chinese Vegetable ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L21", name: "Shrimp With Chinese Vegetables ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L22", name: "Shrimp With Broccoli ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L23", name: "Shrimp With Garlic Sauce ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L24", name: "Kung Pao Shrimp ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L25", name: "Singapore Mei Fun ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L26", name: "Boneless Spare Ribs ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L27", name: "Steamed Or Fried Dumpling (6) ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L28", name: "Sesame Chicken ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L29", name: "General Tso's Chicken ", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L30", name: "Bourbon Chicken ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L31", name: "Chicken Wings (4) ", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L32", name: "Chicken on Stick (4) ", description: "", spicy: false, category: lunch_special},
                          ])


specialties = Category.create({name: "Super Wok Specialties", description: "with White Rice", store: super_wok, })
combination_platters = Category.create({name: "Combination Platters", description: "with Pork Fried Rice & Egg Roll", store: super_wok, })
appetizer = Category.create({name: "Appetizer", description: "", store: super_wok, })
soup = Category.create({name: "Soup", description: "with Fried Noodles", store: super_wok, })
chow_mein = Category.create({name: "Chow Mein", description: "with Fried Noodles & White Rice", store: super_wok, })
chow_fun = Category.create({name: "Chow Fun", description: "Soft Flat Rice Noodles", store: super_wok, })
mei_fun = Category.create({name: "Mei Fun", description: "Thin Rice Noodles", store: super_wok, })
vegetarian = Category.create({name: "Vegetarian", description: "with White Rice", store: super_wok, })
fried_rice = Category.create({name: "Fried Rice", description: "", store: super_wok, })
egg_foo_young = Category.create({name: "Egg Foo Young", description: "with White Rice", store: super_wok, })
lo_mein = Category.create({name: "Lo Mein", description: "", store: super_wok, })
pork = Category.create({name: "Pork", description: "with White Rice", store: super_wok, })
chicken = Category.create({name: "Chicken", description: "with White Rice", store: super_wok, })
beef = Category.create({name: "Beef", description: "with White Rice", store: super_wok, })
seafood = Category.create({name: "Seafood", description: "with White Rice", store: super_wok, })
lunch_special = Category.create({name: "Lunch Special", description: "Mon- Sat: 11:00am - 3:00pm (with Pork Fried Rice)", store: super_wok, })

specialties_foods = Food.create([
                                    {menu_number: "S1", name: "Sesame Chicken (White meat)  ", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S2", name: "General Tso's Chicken   ", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S3", name: "General Tso's Chicken & Shrimp   ", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S4", name: "Four Seasons    ", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S5", name: "Orange Beef", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S5", name: "Sesame Beef", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S6", name: "Shrimp, Beef, Chicken in Garlic Sauce", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S7", name: "Orange Flavor Chicken", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S8", name: "Triple Delight", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S9", name: "Triple Delight", description: "", spicy: false, category: specialties, },
                                    {menu_number: "S10", name: "Scallop and Shrimp w. Garlic Sauce", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S11", name: "Hunan Double Delight    ", description: "", spicy: true, category: specialties, },
                                    {menu_number: "S12", name: "Honey Walnut Chicken    ", description: "", spicy: false, category: specialties, },
                                ])

combo_foods = Food.create([
                              {menu_number: "C1", name: "Chicken Chow Mein", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C2", name: "Pork or Chicken Egg Foo Young", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C3", name: "Roast Pork or Chicken Lo Mein", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C4", name: "Moo Goo Gai Pan", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C5", name: "Sweet & Sour Chicken", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C6", name: "Chicken w. Broccoli", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C7", name: "Chicken w. Chinese Veg", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C8", name: "Chicken w. Cashew Nuts", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C9", name: "Chicken w. Garlic Sauce", description: "", spicy: true, category: combination_platters, },
                              {menu_number: "C10", name: "Pepper Steak w. Onion", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C11", name: "Szechuan Beef", description: "", spicy: true, category: combination_platters, },
                              {menu_number: "C12", name: "Beef w. Broccoli", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C13", name: "Shrimp w. Chinese Vegetables", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C14", name: "Shrimp w. Garlic Sauce", description: "", spicy: true, category: combination_platters, },
                              {menu_number: "C15", name: "Shrimp w. Broccoli", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C16", name: "Sesame Chicken", description: "", spicy: false, category: combination_platters, },
                              {menu_number: "C17", name: "General Tso's Chicken", description: "", spicy: true, category: combination_platters, },
                          ])

appetizer_foods = Food.create([
                                  {menu_number: "1", name: "Roast Pork Egg Roll (1)         ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "2", name: "Vegetable Egg Roll (1)          ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "3", name: "Spring Roll (1)                 ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "4", name: "Vegetable Egg Roll (5)          ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "5", name: "Fried Crabmeat Cheese Wonton (8)", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "6", name: "Chinese Scallion Pancake        ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "7", name: "Fried Or Steamed Dumplings (6)  ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "8", name: "Steamed Vegetable Dumplings (6) ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "9", name: "Teriyaki Beef Stick (4)         ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "10", name: "Bar-B-Q Spare Ribs (5)          ", description: "", spicy: false, category: combination_platters, },
                                  {menu_number: "10", name: "Bar-B-Q Spare Ribs (10)         ", description: "", spicy: false, category: combination_platters, },
                              ])

soup_food =Food.create([
                           {menu_number: "11", name: "Wonton Soup                        ", description: "", spicy: false, category: soup},
                           {menu_number: "12", name: "Egg Drop Soup                      ", description: "", spicy: false, category: soup},
                           {menu_number: "13", name: "Chicken Rice Or Noodle Soup        ", description: "", spicy: false, category: soup},
                           {menu_number: "14", name: "Hot & Sour Soup              ", description: "", spicy: false, category: soup},
                           {menu_number: "15", name: "Wonton Egg Drop Soup (for 2)       ", description: "", spicy: false, category: soup},
                           {menu_number: "16", name: "Vegetable & Bean Curd Soup (for 2) ", description: "", spicy: false, category: soup},
                           {menu_number: "17", name: "House Special Wonton Soup (for 2)  ", description: "", spicy: false, category: soup},
                       ])


chow_mein_foods = Food.create([
                                  {menu_number: "18", name: "Chicken Chow Mein ", description: "", spicy: false, category: chow_mein},
                                  {menu_number: "19", name: "Shrimp Chow Mein ", description: "", spicy: false, category: chow_mein},
                                  {menu_number: "20", name: "Vegetable Chow Mein ", description: "", spicy: false, category: chow_mein},
                              ])

mei_fun_foods = Food.create([
                                {menu_number: "21", name: "Chicken Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "22", name: "Roast Pork Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "23", name: "Vegetable Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "24", name: "Shrimp Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "25", name: "House Special Mei Fun ", description: "", spicy: false, category: mei_fun},
                                {menu_number: "26", name: "Singapore Mei Fun ", description: "", spicy: true, category: mei_fun},
                            ])
veg_foods = Food.create([
                            {menu_number: "27", name: "Vegetable Delight                       ", description: "", spicy: false, category: vegetarian},
                            {menu_number: "28", name: "Bean Curd Home Style                    ", description: "", spicy: false, category: vegetarian},
                            {menu_number: "29", name: "Moo Shu Vegetable(w. 8 pancakes)        ", description: "", spicy: false, category: vegetarian},
                            {menu_number: "30", name: "String Bean w. Garlic or Szechuan Sauce ", description: "", spicy: true, category: vegetarian},
                            {menu_number: "31", name: "Broccoli w. Brown Sauce", description: "", spicy: false, category: vegetarian},
                            {menu_number: "31", name: "Broccoli w. Garlic Sauce", description: "", spicy: true, category: vegetarian},
                            {menu_number: "32", name: "Bean Curd Szechuan Style                ", description: "", spicy: true, category: vegetarian},
                            {menu_number: "33", name: "Sesame Bean Curd ", description: "", spicy: false, category: vegetarian},
                            {menu_number: "33", name: "General Tso's Bean Curd ", description: "", spicy: true, category: vegetarian},
                        ])


fried_rice_foods = Food.create([
                                   {menu_number: "34", name: "Roast Pork Fried Rice", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "35", name: "Chicken Fried Rice", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "36", name: "Beef Fried Rice", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "37", name: "Shrimp Fried Rice", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "38", name: "Vegetable Fried Rice", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "39", name: "House Special Fried Rice", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "40", name: "Egg Fried Rice", description: "", spicy: false, category: fried_rice},
                                   {menu_number: "41", name: "Plain Fried Rice", description: "", spicy: false, category: fried_rice},
                               ])

egg_foo_young_foods = Food.create([
                                      {menu_number: "42", name: "Roast Pork Egg Foo Young", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "43", name: "Chicken Egg Foo Young", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "44", name: "Shrimp Egg Foo Young", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "45", name: "Vegetable Egg Foo Young", description: "", spicy: false, category: egg_foo_young},
                                      {menu_number: "46", name: "House Special Egg Foo Young", description: "", spicy: false, category: egg_foo_young},
                                  ])

lo_mein_foods = Food.create([
                                {menu_number: "47", name: "Roast Pork Lo Mein", description: "", spicy: false, category: lo_mein},
                                {menu_number: "48", name: "Chicken Lo Mein", description: "", spicy: false, category: lo_mein},
                                {menu_number: "49", name: "Beef Lo Mein", description: "", spicy: false, category: lo_mein},
                                {menu_number: "50", name: "Shrimp Lo Mein", description: "", spicy: false, category: lo_mein},
                                {menu_number: "51", name: "Vegetable Lo Mein", description: "", spicy: false, category: lo_mein},
                                {menu_number: "52", name: "Hosue Special Lo Mein", description: "", spicy: false, category: lo_mein},
                                {menu_number: "53", name: "Plain Lo Mein", description: "", spicy: false, category: lo_mein},
                            ])

pork_foods = Food.create([
                             {menu_number: "54", name: "Roast Pork w. Chinese Veg", description: "", spicy: false, category: pork},
                             {menu_number: "55", name: "Shredded Pork w. Garlic Sauce", description: "", spicy: true, category: pork},
                             {menu_number: "56", name: "Mongolian Pork", description: "", spicy: false, category: pork},
                             {menu_number: "57", name: "Hunan Shredded Pork", description: "", spicy: true, category: pork},
                             {menu_number: "58", name: "Shredded Pork Szechuan Style", description: "", spicy: true, category: pork},
                             {menu_number: "59", name: "Moo Shu Pork (w. 6 pancakes", description: "", spicy: false, category: pork},
                         ])

chicken_foods = Food.create([
                                {menu_number: "60", name: "Chicken w. Broccoli", description: "", spicy: false, category: chicken},
                                {menu_number: "61", name: "Sweet & Sour Chicken", description: "", spicy: false, category: chicken},
                                {menu_number: "62", name: "Moo Goo Gai Pan", description: "", spicy: false, category: chicken},
                                {menu_number: "63", name: "Curry Chicken", description: "", spicy: true, category: chicken},
                                {menu_number: "64", name: "Mongolian Chicken", description: "", spicy: false, category: chicken},
                                {menu_number: "65", name: "Chicken w. Snow Peas", description: "", spicy: false, category: chicken},
                                {menu_number: "66", name: "Chicken w. Garlic Sauce", description: "", spicy: true, category: chicken},
                                {menu_number: "67", name: "Kung Pao Chicken", description: "", spicy: true, category: chicken},
                                {menu_number: "68", name: "Chicken w. Cashew Nuts", description: "", spicy: false, category: chicken},
                                {menu_number: "69", name: "Lemon Chicken", description: "", spicy: false, category: chicken},
                                {menu_number: "70", name: "Chicken w. String Bean", description: "", spicy: false, category: chicken},
                                {menu_number: "71", name: "Hunan Chicken", description: "", spicy: true, category: chicken},
                                {menu_number: "72", name: "Moo Shu Chcken(w. 8 pancakes", description: "", spicy: false, category: chicken},
                                {menu_number: "73", name: "Szechuan Chicken", description: "", spicy: true, category: chicken},
                                {menu_number: "74", name: "Chicken w. Chinese Veg", description: "", spicy: false, category: chicken},
                            ])

beef_foods = Food.create([
                             {menu_number: "75", name: "Pepper Steak w. Onion", description: "", spicy: false, category: beef},
                             {menu_number: "76", name: "Beef w. Broccoli", description: "", spicy: false, category: beef},
                             {menu_number: "77", name: "Beef w. Chinese Vegetable", description: "", spicy: false, category: beef},
                             {menu_number: "78", name: "Beef w. Mushroom", description: "", spicy: false, category: beef},
                             {menu_number: "79", name: "Hunan Beef", description: "", spicy: true, category: beef},
                             {menu_number: "80", name: "Beef w. Garlic Sauce", description: "", spicy: true, category: beef},
                             {menu_number: "81", name: "Beef w. String Bean", description: "", spicy: false, category: beef},
                             {menu_number: "82", name: "Kung Pao Beef", description: "", spicy: true, category: beef},
                             {menu_number: "83", name: "Szechuan Beef", description: "", spicy: true, category: beef},
                         ])

shrimp_foods = Food.create([
                               {menu_number: "84", name: "Shrimp w. Chinese Vegetable", description: "", spicy: false, category: seafood},
                               {menu_number: "85", name: "Shrimp w. Broccoli", description: "", spicy: false, category: seafood},
                               {menu_number: "86", name: "Shrimp w. Lobster Sauce", description: "", spicy: false, category: seafood},
                               {menu_number: "87", name: "Shrimp w. Garlic Sauce", description: "", spicy: true, category: seafood},
                               {menu_number: "88", name: "Kung Pao Shrimp", description: "", spicy: true, category: seafood},
                               {menu_number: "89", name: "Shrimp w. Cashew Nuts", description: "", spicy: false, category: seafood},
                               {menu_number: "90", name: "Hunan Shrimp", description: "", spicy: true, category: seafood},
                               {menu_number: "91", name: "Shrimp w. String Bean", description: "", spicy: false, category: seafood},
                               {menu_number: "92", name: "Shrimp and Chicken Szechuan Style", description: "", spicy: true, category: seafood},
                               {menu_number: "93", name: "Honey Walnuts Shrimp", description: "", spicy: false, category: seafood},
                               {menu_number: "94", name: "Sweet & Sour Shrimp", description: "", spicy: false, category: seafood},
                               {menu_number: "95", name: "General Tso's Shrimp", description: "", spicy: true, category: seafood},
                               {menu_number: "96", name: "Sesame Shrimp", description: "", spicy: false, category: seafood},
                           ])

lunch_foods = Food.create([
                              {menu_number: "L1", name: "Vegetable Delight", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L2", name: "Mixed Chinese Veggie w. Garlic Sauce", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L3", name: "Chicken Chow Mein", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L4", name: "Roast Pork or Chicken Egg Foo Young", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L5", name: "Chicken or Roast Pork Lo Mein", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L6", name: "Sweet & Sour Chicken", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L7", name: "Moo Goo Gai Pan", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L8", name: "Chicken with Broccoli", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L9", name: "Chicken with Garlic Sauce", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L10", name: "Hunan Chicken", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L11", name: "Kung Pao Chicken", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L12", name: "Chicken with Cashew Nuts", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L13", name: "Chicken with Chinese Vegetables", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L14", name: "Szechuan Chicken", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L15", name: "Pepper Steak with Onion", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L16", name: "Beef with Broccoli", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L17", name: "Szechuan Beef", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L18", name: "Beef with Chinese Vegetables", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L19", name: "Shrimp Lo Mein", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L20", name: "Singapore Mei Fun", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L21", name: "Shrimp with Broccoli", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L22", name: "Shrimp with Chinese Vegetables", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L23", name: "Shrimp with Garlic Sauce", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L24", name: "Kung Pao Shrimp", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L25", name: "Fried or Steamed Dumpling (6", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L26", name: "Orange Chicken (White Meat)", description: "", spicy: true, category: lunch_special},
                              {menu_number: "L27", name: "Sesame Chicken (White Meat)", description: "", spicy: false, category: lunch_special},
                              {menu_number: "L28", name: "General Tso's Chicken (White Meat)", description: "", spicy: true, category: lunch_special},
                          ])