FACES = { 'Ace' => 11, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
          '7' => 7, '8' => 8, '9' => 9, 'Jack' => 10, 'Queen' => 10,
          'King' => 10 }
HIGHEST_SCORE = 21
DEALER_MIN_SCORE = 17

def prompt(string)
  puts ">> #{string}"
end

def initialize_game!(info)
  info[:deck].replace(initialize_deck)
  clear_hands!(info)
  reset_score!(info)
end

def initialize_deck
  %w(C D H S).product(FACES.keys).shuffle
end

def clear_hands!(info)
  info[:player][:hand] = []
  info[:dealer][:hand] = []
end

def reset_score!(info)
  info[:player][:score] = 0
  info[:dealer][:score] = 0
end

def deal_card(info, player)
  info[player][:hand] << info[:deck].shift
end

def deal_initial_hands(info)
  2.times do
    deal_card(info, :player)
    deal_card(info, :dealer)
  end
  calculate_score(info, :player)
  calculate_score(info, :dealer)
end

def display_hand(info, player)
  hand = hand_to_pretty(info[player][:hand])
  identifier = (player == :player ? 'Your hand is: ' : "The dealer's hand is: ")
  prompt format("%s%s", identifier, join_pretty_hand(hand))
end

def display_dealer_hidden_hand(info)
  hand = hand_to_pretty(info[:dealer][:hand])
  hand[1] = 'Unknown Card'
  prompt format("The dealer's hand is: %s", join_pretty_hand(hand))
end

def join_pretty_hand(pretty_hand)
  return pretty_hand.join(' and ') if pretty_hand.size < 3
  pretty_hand[-1] = "and #{pretty_hand[-1]}"
  pretty_hand.join(', ')
end

def hand_to_pretty(hand)
  hand.map { |card| pretty_card(card) }
end

def pretty_card(card)
  suit, face = card
  "#{face} of #{suit_name(suit)}"
end

def suit_name(letter)
  case letter
  when 'C' then 'Clubs'
  when 'H' then 'Hearts'
  when 'D' then 'Diamonds'
  when 'S' then 'Spades'
  else 'ERROR'
  end
end

def player_turn(info)
  loop do
    calculate_score(info, :player)
    display_score(info, :player)
    break if info[:player][:score] > HIGHEST_SCORE

    prompt "Hit or stay?"
    answer = gets.chomp
    break if answer.strip.downcase == 'stay'
    deal_card(info, :player)
    prompt "You drew #{pretty_card(info[:player][:hand].last)}"
  end
end

def dealer_turn(info)
  calculate_score(info, :dealer)
  player_score, score = get_scores(info)
  while score < DEALER_MIN_SCORE || score <= player_score
    deal_card(info, :dealer)
    prompt "The dealer drew #{pretty_card(info[:dealer][:hand].last)}"
    calculate_score(info, :dealer)
    score = info[:dealer][:score]
  end
end

def calculate_score(info, player)
  score = 0
  hand = info[player][:hand]
  hand.each { |_suit, face| score += FACES[face] }
  score = handle_aces(score, hand) if score > HIGHEST_SCORE
  info[player][:score] = score
end

def handle_aces(score, hand)
  hand.select { |_suit, face| face == 'Ace' }.count.times do
    score -= 10 if score > HIGHEST_SCORE
  end
  score
end

def display_score(info, player)
  identifier = (player == :player ? 'Your' : "The dealer's")
  score = info[player][:score].to_s
  prompt format("%s score is: %s", identifier, score)
end

def bust?(info)
  player_score, dealer_score = get_scores(info)
  return true if player_score > HIGHEST_SCORE || dealer_score > HIGHEST_SCORE
  false
end

def get_scores(info)
  player_score = info[:player][:score]
  dealer_score = info[:dealer][:score]
  return player_score, dealer_score
end

def display_bust(info)
  player_score, dealer_score = get_scores(info)
  identifier = (player_score > dealer_score ? 'You' : 'The dealer')
  prompt "#{identifier} busted!"
end

def display_winner(info)
  player_win = 'You won!'
  dealer_win = 'The dealer won.'
  player_score, dealer_score = get_scores(info)
  if bust?(info)
    display_fancy_winner(player_win) if dealer_score > HIGHEST_SCORE
    display_fancy_winner(dealer_win) if player_score > HIGHEST_SCORE
  else
    display_fancy_winner(player_score > dealer_score ? player_win : dealer_win)
  end
end

def display_fancy_winner(string)
  width = 35
  prompt "+-#{'-' * width}-+"
  prompt "| #{string.center(width)} |"
  prompt "+-#{'-' * width}-+"
end

def play_again?
  prompt 'Play again?'
  answer = gets.chomp.strip.downcase
  return false if answer == 'no'
  true
end

info = {
  deck: [],
  player: {
    hand: [],
    score: 0
  },
  dealer: {
    hand: [],
    score: 0
  }
}
# main game loop
loop do
  system 'clear'

  initialize_game!(info)
  prompt "Shuffling the deck."

  deal_initial_hands(info)
  display_dealer_hidden_hand(info)
  display_hand(info, :player)

  player_turn(info)

  dealer_turn(info) unless bust?(info)

  display_bust(info) if bust?(info)

  display_hand(info, :dealer)
  display_score(info, :dealer)
  display_hand(info, :player)
  display_score(info, :player)
  display_winner(info)
  break unless play_again?
end
prompt 'Thanks for playing Twenty-One!'
prompt 'Goodbye.'
