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
  answer = gets.chomp
  return answer
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(total)
    prompt_user
    user_input = get_user_input
    if user_input == "h"
      total += deal_card
    elsif user_input == "s"
      total
    else
      invalid_command
    end
    total
    end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
