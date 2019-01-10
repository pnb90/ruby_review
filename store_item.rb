
item_1 = {:color => "red", :price => 500, :country => "USA"}
item_2 = {:color => "green", :price => 450, :country => "China"}
item_3 = {color: "blue", price: 325, country: "Vietnam"}

p item_1 
p item_2
p item_3

item = StoreStore::Item.new("purple", 225, "Italy")

p item.price

item.change_price(552)

p item.price