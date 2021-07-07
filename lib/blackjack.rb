def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == 's'
    return current_total
  elsif input == 'h'
    return current_total + deal_card
  else
    return invalid_command
end  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand_total = initial_round 
  until hand_total > 21
    hand_total = hit?(hand_total)
    display_card_total(hand_total)
  end
  end_game(hand_total)
end