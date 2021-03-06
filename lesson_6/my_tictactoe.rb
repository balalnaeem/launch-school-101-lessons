require 'pry'

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
WINNING_LINES = [
                  [1, 2, 3], [4, 5, 6], [7, 8, 9],
                  [1, 4, 7], [2, 5, 8], [3, 6, 9],
                  [1, 5, 9], [3, 5, 7]
]

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system "clear"
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |  "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |  "
  puts "-----+-----+-----"
  puts "     |     |  "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |  "
  puts "-----+-----+-----"
  puts "     |     |  "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |  "
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_sqaures(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_makes_move!(brd)
  square = ''
  loop do
    prompt "Choose a square: (#{empty_sqaures(brd).join(',')})"
    square = gets.chomp.to_i
    break if empty_sqaures(brd).include?(square)
    prompt "Sorry! That's not a valid square"
  end
  brd[square] = PLAYER_MARKER
end

def computer_makes_move!(brd)
  square = empty_sqaures(brd).sample
  brd[square] = COMPUTER_MARKER
end

def detect_winner?(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
      brd[line[1]] == PLAYER_MARKER &&
      brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
      brd[line[1]] == COMPUTER_MARKER &&
      brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner?(brd)
end

def board_full?(brd)
  empty_sqaures(brd).empty?
end

loop do
  board = initialize_board
  display_board(board)

  loop do
    player_makes_move!(board)
    break if someone_won?(board) || board_full?(board)
    computer_makes_move!(board)
    break if someone_won?(board) || board_full?(board)
    display_board(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner?(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Would you like to play again?('y')"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt "Thank you for playing Tic Tac Toe. Good bye!"








