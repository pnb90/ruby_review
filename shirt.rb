require "./pricing_module.rb"

module StoreStore
  class Shirt
    include Pricing 

    def initialize(material, size)
      super()
      @material = material
      @size = size
    end
  end
end