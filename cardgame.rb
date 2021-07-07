def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts  "Your cards add up to #{card_total}"
end

def initial_round
  deal_card + deal_card
end

deal_card
display_card_total
initial_round
