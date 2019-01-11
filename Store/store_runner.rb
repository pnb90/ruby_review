require "./item.rb"
require "./shirt.rb"

item_1 = StoreStore::Item.new(
          color: "red", 
          price: 500, 
          country: "USA"
          )
item_2 = StoreStore::Item.new(
         color: "green", 
         price: 450, 
         country: "China"
         )
item_3 = StoreStore::Item.new(
         color: "blue", 
         price: 325, 
         country: "Vietnam"
         )

p item_1 
p item_2
p item_3

p item_1.price

item_1.change_price(552)

p item_1.price

shirt = StoreStore::Shirt.new(
    material: cotton
    size: large
    )

# p shirt