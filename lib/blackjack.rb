def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  1+rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round

    card1=deal_card
  card2=deal_card
  display_card_total(card1+card2)
  card1+card2
end

def hit?(num)
prompt_user
  input=get_user_input
  num = num+deal_card if input== 'h'
  num


end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round

  until total > 21

    total=hit?(total)
    display_card_total(total)
  end
  end_game(total)
end


