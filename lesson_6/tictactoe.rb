require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                 [1, 4, 7], [2, 5, 8], [3, 6, 9],
                 [1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize

def display_board(brd)
  system "clear"
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=',', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd), ', ')}."
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry! Thats not a vlaid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, brd)
  if brd.values_at(*line).count(PLAYER_MARKER) == 2
    brd.select { |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def find_winning_square(line, brd)
  if brd.values_at(*line).count(COMPUTER_MARKER) == 2
    brd.select { |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

    WINNING_LINES.each do |line|
      square = find_winning_square(line,brd)
      break if square
    end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd)
      break if square
    end
  end

  if !square
    square = 5 if brd[5] == ' '
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  if current_player == 'Player'
    'Computer'
  else
    'Player'
  end
end

def detect_winner(brd)
  # WINNING_LINES.each do |line|
  #   if brd[line[0]] == PLAYER_MARKER &&
  #      brd[line[1]] == PLAYER_MARKER &&
  #      brd[line[2]] == PLAYER_MARKER
  #     return "Player"
  #   elsif brd[line[0]] == COMPUTER_MARKER &&
  #         brd[line[1]] == COMPUTER_MARKER &&
  #         brd[line[2]] == COMPUTER_MARKER
  #     return "Computer"
  #   end
  # end

  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def board_full?(brd)
  empty_squares(brd).empty?
end

loop do
  player_score = 0
  computer_score = 0

  loop do
    board = initialize_board
    display_board(board)
    current_player = ''
    prompt "Player score = #{player_score}"
    prompt "Computer score = #{computer_score}"
    prompt "Who should go first? ('1' for player. '2' for computer)"
    first_turn = gets.chomp.to_i

    if first_turn == 1
      current_player = 'Player'
    else
      current_player = 'Computer'
    end

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    display_board(board)

    # if someone_won?(board)
    #   prompt "#{detect_winner(board)} won!"
    # else
    #   prompt "It's a tie!"
    # end

    if detect_winner(board) == "Player"
      player_score += 1
    elsif detect_winner(board) == "Computer"
      computer_score += 1
    end

    if player_score == 5 || computer_score == 5
      puts "#{detect_winner(board)} is the grand winner with 5 wins."
      break
    end
  end
  prompt "Would you like to play again? ('y' for yes.)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt "Thank you for playing Tic Tac Toe! Good bye!"
