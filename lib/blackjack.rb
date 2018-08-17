def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  total
end

  # it "calls on #prompt_user then #get_user_input" do
  #   expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
  #   expect(self).to receive(:get_user_input).and_return("s")
  #   hit?(7)
  # end

def hit?(current_total)
   prompt_user
   input = get_user_input
  if input == "s"
    current_total
  elsif input == "h"
    new_total = deal_card + current_total
    new_total
  else 
    invalid_command
    prompt_user
  end
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
  total = hit?(initial_round)
  while total <= 21
    display_card_total(total)
    total += hit?(total)
  end
end_game(total)
end