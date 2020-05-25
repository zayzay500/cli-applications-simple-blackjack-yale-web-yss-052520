require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = 1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  
  display_card_total(card_total)
  
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  
  input = get_user_input
  
  if input == 'h'
    card_total += deal_card
  elsif input != 's'
    invalid_command
    prompt_user
    get_user_input
  end
  
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  while card_total <= 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game
end
    
