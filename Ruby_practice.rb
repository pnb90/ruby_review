# # food_counter = 1
# # foods_array = []

# # 5.times do
# #   if food_counter == 1
# #     puts "You will enter your favorite 5 foods - what is your first food?  "
# #     food = gets.chomp.to_s
# #     foods_array << food
# #     food_counter += 1 
# #   else
# #     puts "Please enter another food: "
# #     food = gets.chomp.to_s
# #     foods_array << food
# #     food_counter += 1 
# #   end
# # end

# # food_counter = 1 
# # foods_array.each do |dish| 
# #   puts "#{ food_counter }. I love #{ dish }!"
# #   food_counter += 1 
# # end 

# #====================================================

# # count = 0

# # 11.times do
# #   puts count
# #   count += 1 
# # end 

# #====================================================

# # # If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. If Sam can make crepes or Sally can speak French, they should marry. 

# # sams_recipes = "crepes"
# # sally_languages = "French"
# # sam_sally_dating_status = false
# # sam_sally_marital_status = false

# # if sams_recipes.length > 10 && sally_languages.length > 5
# #   sam_sally_dating_status = true
# # elsif sams_recipes == "crepes" && sally_languages == "French"
# #   sam_sally_marital_status = true
# # else
# #   sam_sally_dating_status = false
# #   sam_sally_marital_status = false
# # end

# # puts sam_sally_dating_status
# # puts sam_sally_marital_status

# #====================================================

puts "Please enter the following information for your 5 family members: "
family_member_counter = 1

family_personal_information = []

5.times do
  family_member_hash = {}

  puts "What is your family member #{ family_member_counter } first name: "
  first_name = gets.chomp.to_s

  puts "What is your family member #{ family_member_counter } last name: "
  last_name = gets.chomp.to_s

  puts "What is your family member #{ family_member_counter } email: "
  email = gets.chomp.to_s

  family_member_hash["first_name"] = first_name
  family_member_hash["last_name"] = last_name
  family_member_hash["email"] = email
  family_member_hash["account_number"] = rand(9000000..9999999)
  family_personal_information << family_member_hash
  p family_personal_information

  family_member_counter += 1 
end

# family_member_counter = 0

# 5.times do
#   puts "FIRST NAME: #{ family_personal_information[family_member_counter]["first_name"] }"
#   puts "LAST NAME: #{ family_personal_information[family_member_counter]["last_name"] }"
#   puts "EMAIL: #{ family_personal_information[family_member_counter]["email"] }"
#   puts "ACCT #: #{ family_personal_information[family_member_counter]["account_number"] }"
#   puts "=" * 10
#   family_member_counter += 1 
# end 

# #====================================================

# classroom = []

# 4.times do
#   puts "Please enter a student's name: "
#   student_name = gets.chomp
#   classroom << student_name
# end

# if classroom.length == 2
#   group_1 = 

# end
# p classroom

#========================================================== GOOD CODE ABOVE

  # characters_list = { 
  #                    "A" => 1, 
  #                    "B" => 2, 
  #                    "C" => 3, 
  #                    "D" => 4, 
  #                    "E" => 5, 
  #                    "F" => 6, 
  #                    "G" => 7, 
  #                    "H" => 8, 
  #                    "I" => 9, 
  #                    "J" => 10, 
  #                    "K" => 11, 
  #                    "L" => 12, 
  #                    "M" => 13, 
  #                    "N" => 14, 
  #                    "O" => 15, 
  #                    "P" => 16, 
  #                    "Q" => 17, 
  #                    "R" => 18, 
  #                    "S" => 19, 
  #                    "T" => 20, 
  #                    "U" => 21, 
  #                    "V" => 22, 
  #                    "W" => 23, 
  #                    "X" => 24, 
  #                    "Y" => 25, 
  #                    "Z" => 26
  #                    }

# ('A'..'Z').to_a

# alphabet = "abcdefghijklmnopqrstuvwxyz"
# alphabet_array = alphabet.upcase.split("")
# p alphabet_array

# new_alphabet = []
# number_value = 1 

# # alphabet_array.each do |letter|
# #   new_alphabet << [letter, number_value]
# #   number_value += 1 
# # end


# new_alphabet_hash = new_alphabet.to_h
# p new_alphabet_hash
# p new_alphabet.reverse.to_h

# ('A'..'Z').to_a.each do |letter|
#   new_alphabet << [letter, number_value]
#   number_value += 1 
# end

# p new_alphabet.to_h

def diamond_printer(word)

  #creates an array of individual letter based on the word input, makes sure it's all uppercase and all string values.
  message = word.to_s.upcase.split("")

  #creates the alphabet with values A =1, etc. into a hash, and also defines a reverse hash as well.
  alphabet_array = []
  number_value = 1 
  alphabet = ("A".."Z").to_a

  alphabet.each do |letter|
    alphabet_array << [letter, number_value]
    number_value += 1 
  end

  alphabet_hash = alphabet_array.to_h
  reverse_alphabet_hash = alphabet_array.reverse.to_h

  # if message.include?("A") == true
  #   puts "It's there"
  # else
  #   puts "it's not there"
  # end


  #go through the message array, one element at at a time, look at each individual letter in the message array, and make sure it's in the alphabet array
  letter_counter = 1 

  message.each do |letter|
    if alphabet.include?(letter) == false
      puts "not a letter"
      p letter_counter
      letter_counter += 1 
    else
      puts "it's a letter"
    end
  end 
end

puts diamond_printer("?de beers")
puts "+++++++++++++++++++++++"



def diamond_printer(word)
  message = word.to_s.upcase.split("")

  array = []

  alphabet = ("A".."Z").to_a
  alphabet_array = []
  number_value = 1

  ('A'..'Z').to_a.each do |letter|
    alphabet_array << [letter, number_value]
    number_value += 1
  end

  characters_list = alphabet_array.to_h
  characters_list_reversed = alphabet_array.reverse.to_h

  message.each do |message_letter| 
    if alphabet.include?(message_letter) == false
      array << [message_letter]
end 