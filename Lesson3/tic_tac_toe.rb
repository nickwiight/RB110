INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(message)
  puts ">> #{message}"
end

def joinor(array, seperator=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.first.to_s
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(seperator)
  end
end

def play_game(board)
  loop do
    display_board(board)

    player_move!(board)
    break if game_end?(board)

    computer_move!(board)
    break if game_end?(board)
  end
end

def display_winner(board)
  display_board(board)
  if winner?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end
end

def display_board(board)
  system('clear')
  prompt "You're #{PLAYER_MARKER}. The Computer is #{COMPUTER_MARKER}."
  puts ''
  display_bare_board(board)
  puts ''
end

def display_bare_board(game_board)
  puts " #{game_board[1]} | #{game_board[2]} | #{game_board[3]} "
  puts '---+---+---'
  puts " #{game_board[4]} | #{game_board[5]} | #{game_board[6]} "
  puts '---+---+---'
  puts " #{game_board[7]} | #{game_board[8]} | #{game_board[9]} "
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_move!(board)
  empty_string = joinor(empty_squares(board))
  input = ''
  prompt "Choose an empty square (#{empty_string})"
  loop do
    input = gets.chomp

    break if empty_squares(board).include?(input.to_i) && integer?(input)

    prompt "Invalid input. Choose an empty square (#{empty_string})"
  end
  board[input.to_i] = PLAYER_MARKER
end

def integer?(string)
  string.to_i.to_s == string
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def computer_move!(board)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board)
    break if square
  end
  move = (square ? square : empty_squares(board).sample)
  board[move] = COMPUTER_MARKER
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select { |k, v| line.include?(k) && v == ' ' }.keys.first
  end
end

def matchables(game_board)
  matchables = game_board
  crosses(game_board).each { |cross| matchables << cross }
  columns(game_board).each { |column| matchables << column }
  matchables
end

def all_match?(array)
  return true if array.all? { |letter| letter == 'X' }
  return true if array.all? { |letter| letter == 'O' }
  false
end

def winner?(game_board)
  !!detect_winner(game_board)
end

def detect_winner(game_board)
  WINNING_LINES.each do |line|
    return 'Player' if line.all? { |space| game_board[space] == PLAYER_MARKER }
    return 'Computer' if line.all? do |space|
                           game_board[space] == COMPUTER_MARKER
                         end
  end
  nil
end

def board_full?(board)
  empty_squares(board).empty?
end

def game_end?(board)
  winner?(board) || board_full?(board)
end

def tutorial_board
  board = {}
  (1..9).each { |num| board[num] = "#{num}" }
  board
end

def update_wins!(board, wins)
  case detect_winner(board)
  when 'Player' then wins[:player] += 1
  when 'Computer' then wins[:computer] += 1
  else
    wins[:ties] += 1
  end
end

def display_win_count(wins)
  prompt "You have won #{wins[:player]} times."
  prompt "The computer has won #{wins[:computer]} times."
  prompt "There have been #{wins[:ties]} ties."
end

def grand_winner?(wins)
  wins.any? do |key, value|
    key == :ties ? false : value >= 5
  end
end

def display_grand_winner(wins)
  winner = wins.select { |_, value| value >= 5 }.keys.first.to_s.capitalize
  prompt "#{winner} is the grand winner!"
end

system('clear')
prompt 'Welcome to Tic Tac Toe!'
prompt 'Select squares by choosing an empty square.'
prompt 'Squares are defined as:'
display_bare_board(tutorial_board)
prompt 'Win 5 times to be the grand winner!'
prompt 'Press enter to continue'
gets
system('clear')
wins = { player: 0, computer: 0, ties: 0 }

loop do
  game_board = initialize_board

  play_game(game_board)
  display_winner(game_board)
  update_wins!(game_board, wins)
  display_win_count(wins)
  prompt 'Press enter to continue.'
  gets

  if grand_winner?(wins)
    system('clear')
    display_grand_winner(wins)

    prompt 'Play again? ("y" to continue)'
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')

    wins = { player: 0, computer: 0, ties: 0 }
  end
end

# display game ending stuff
prompt 'Thanks for playing Tic Tac Toe!'
prompt 'Goodbye!'
