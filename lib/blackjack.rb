def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  x = gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  i = deal_card
  j = deal_card
  n = i + j
  display_card_total(n)
  return n
end

def hit?(n)
  prompt_user
  x = get_user_input
 
  if x == "h"
    i = deal_card
    n = n + i
    return n
  elsif x == "s"
    
    return n
  elsif x != "h" || "s"
    invalid_command
    prompt_user
  end
end

def invalid_command
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  n = initial_round
  hit?(n)
  display_card_total(n)
end
    
