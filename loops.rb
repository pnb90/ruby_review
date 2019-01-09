#able to accomplish a reptitive task via a loop

#times loop
3.times do
  p "hello, Joe"
end

#make sure your code is dynamic - that is, easily adaptable to new situations

# #each loop
# count = 0 #local variable - has a local scope as defined within a block of code

# 3.times do |block_variable| #block_variable only accessible within the block
#   p count #block of code - between do (start of the block) and end (end of the block)
#   count = count + 1 #difference between reading and writing a variable, the right side of the equal occurs first
# end 

array = ["Jim", "Jane", "Sam"]

3.times do |puppy_name| #times automatically notifies the block_variable to increase by one; the block_variable starts at 0, so it's not helpful if you were to say need to go backwards
  dog = array[puppy_name]
  p dog
end 

#actually naming a number for the times loop is limited to obviously the number of the array. To make it more dynamic, do the array.length of the array.

#each loop is the simple way to do all of the above methods to make it dynamic.

puts "===="

#block_variable more or less = "dog = array[index]"; helps highlight each individual element of the array
array.each do |dog|
  p dog
end 


#while loop - while condition is true, run it

count = 10

while count > 0  
  puts count
  count -= 1 
end 

#until loop - until the condition is true, run it 

until count > 0 
  puts count
  