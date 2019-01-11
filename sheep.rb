#local_variable - contained to whatever space it's defined in
#@instance_variable
#@@class_variable
#$global_variable 
#CONSTANT_VARIABLE - does not change 

# [1,2,3].each do |block_variable|

# end

def method_name(argument_variable)

end

class Sheep
  @@count = 0 #class variables are written /w double @@

  def initialize
    # @name = "bob" #instance variables, with an @, valid only for this instance of sheep.; attached to or called an object 
    @@count += 1
    @id = @@count 
    @awake_percentage = rand(1..100)
  end

  def self.how_many #can also call upon the class by the "self"
    puts "There are #{@@count} sheep."
  end

  def class_count
    @@count
  end

  def method_a 
    puts "hi"
  end

  def method_b
    method_a
  end

  def is_awake?
    awake_percentage > 50
  end
private #dividing line between public and private, available vs unavailable; not necessarily a privacy thing; helps protect code and guide next coder on how to use/where to go

  def awake_percentage
    @awake_percentage
  end
end

Sheep.new #.new is called on the sheep class 
Sheep.new
Sheep.new #class methods 
Sheep.new
Sheep.new
Sheep.new
Sheep.new
Sheep.how_many

sheep = Sheep.new
sheep.method_a
sheep.method_b
p sheep.is_awake?
# p Sheep.new.awake_percentage