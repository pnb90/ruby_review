require "./pricing_module.rb"

module StoreStore
  class Item
    include Pricing

    attr_reader :color, :price, :country
    attr_writer :price

    def initialize(input)
      @color = input[:color]
      @price = input[:price]
      @country = input[:country]
    end
  end
end