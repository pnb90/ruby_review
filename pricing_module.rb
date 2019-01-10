module StoreStore
  module Pricing
    def change_price(new_price) #best/better practice to have a persistent original variable rather than constantly redefining it 
      @price = new_price
    end
  end
end 