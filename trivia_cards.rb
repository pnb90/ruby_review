# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

# hash = {
#         "A" => 1,
#         "B" => 2,
#         "C" => 3
#        }

# p hash.keys[0]    

class Card

  def question
    puts trivia_data.keys[0]
  end

  def answer
    puts trivia_data["What is the capital of Illinois?"]
  end
  
end

class Deck < Card

  def initialize
    @draw_card = 3
  end

  def draw_card
    @draw_card -= 1
  end

  def remaining_cards
    @draw_card
  end

  
end

trivia_data = {
              "What is the capital of Illinois?" => "Springfield",
              "Is Africa a country or a continent?" => "Continent",
              "Tug of war was once an Olympic event. True or false?" => "True"
              }

deck = Deck.new # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end