item_1 = {:color => "red", :price => 500, :country => "USA"}
item_2 = {:color => "green", :price => 450, :country => "China"}
item_3 = {color: "blue", price: 325, country: "Vietnam"}

p item_1 
p item_2
p item_3

class Item
  attr_reader :color, :price, :country
  attr_writer :price

  def initialize(color, price, country)
    @color = color
    @price = price
    @country = country
  end

  def change_price(new_price) #best/better practice to have a persistent original variable rather than constantly redefining it 
    @price = new_price
  end

end

item = Item.new("purple", 225, "Italy")

p item.price

item.change_price(552)

p item.price