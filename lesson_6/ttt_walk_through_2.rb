require 'pry'

INITAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2 ,3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17 ,18 ,19 ,20], [21,                22, 23, 24, 25]] + #rows
                [[1, 6, 11, 16, 21], [2, 7, 12, 17, 22], [3, 8, 13, 18, 23], [4, 9, 14, 19, 24], [5, 10, 15, 20, 25]] + #columns
                [[1, 7, 13, 19, 25], [5, 9, 13, 17, 21]] #diagnoals
FIRST_MOVE = %w(player computer choose)


def prompt(msg)
  puts "=> #{msg}"
end

  def joinor(arr, word = 'or')
    if arr.size == 1
      arr.first
    elsif arr.size == 2
      arr.join(" #{word} ")
    else
      arr[-1] = "#{word} #{arr.last}"
      arr.join(', ')
    end
  end

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  |  #{brd[4]}  |  #{brd[5]}  "
  puts "     |     |     |     |     "
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |     "
  puts "  #{brd[6]}  |  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  |  #{brd[10]}  "
  puts "     |     |     |     |     "
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |     "
  puts "  #{brd[11]}  |  #{brd[12]}  |  #{brd[13]}  |  #{brd[14]}  |  #{brd[15]}  "
  puts "     |     |     |     |     "
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |     "
  puts "  #{brd[16]}  |  #{brd[17]}  |  #{brd[18]}  |  #{brd[19]}  |  #{brd[20]}  "
  puts "     |     |     |     |     "
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |     "
  puts "  #{brd[21]}  |  #{brd[22]}  |  #{brd[23]}  |  #{brd[24]}  |  #{brd[25]}  "
  puts "     |     |     |     |     "
end

def initialize_board
  new_board = {}
  (1..25).each { |num| new_board[num] = INITAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITAL_MARKER }
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 4
    brd.select { |k,v| line.include?(k) && v == INITAL_MARKER }.keys.first
  else
    nil
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a squre from (#{joinor( empty_squares(brd) )}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice!")
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  square = 13 if brd[13] == INITAL_MARKER

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, player)
  if player == "player"
    player_places_piece!(brd)
  elsif player == "computer"
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  if player == 'player'
    player = 'computer'
  elsif player == 'computer'
    player = 'player'
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 5
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 5
      return "Computer"
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

loop do
  user_score = 0
  computer_score = 0

  loop do
    board = initialize_board
    current_player = FIRST_MOVE.sample

    if current_player == 'player'
      loop do
        display_board(board)
        place_piece!(board, current_player)
        display_board(board)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      end
    elsif current_player == 'computer'
      loop do
        display_board(board)
        place_piece!(board, current_player)
        display_board(board)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      end
    else
      prompt("Choose who goes first. (player/computer)")
      choice = gets.chomp.downcase
      if choice == 'player'
        current_player = 'player'
        loop do
          display_board(board)
          place_piece!(board, current_player)
          display_board(board)
          current_player = alternate_player(current_player)
          break if someone_won?(board) || board_full?(board)
        end
      elsif choice == 'computer'
        current_player = 'computer'
        loop do
          display_board(board)
          place_piece!(board, current_player)
          display_board(board)
          current_player = alternate_player(current_player)
          break if someone_won?(board) || board_full?(board)
        end
      end
    end
    display_board(board)

    if someone_won?(board)
      prompt("#{detect_winner(board)} won!")
    else
      prompt("It's a tie!")
    end

    if detect_winner(board) == 'Player'
      user_score += 1
    elsif
      detect_winner(board) == 'Computer'
      computer_score += 1
    end

    if user_score == 5
      prompt "Player won 5 times and is the Grand Winner."
      break
    elsif computer_score == 5
      prompt("Computer won 5 times and is the Grand Winner.")
      break
    end
    prompt("Player won #{user_score} time. Computer won #{computer_score} times.")
    prompt("Would you like to continue the match? (y/n)")
    answer = gets.chomp.downcase
    break unless answer.start_with?('y')
  end

  prompt("Play another match? (y, n)")
  answer = gets.chomp
  break unless answer.start_with?('y')
end

prompt("Thank for playing Tic Tac Toe.")


 # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #    return "Player"
    #  elsif brd[line[0]] == COMPUTER_MARKER &&
    #    brd[line[1]] == COMPUTER_MARKER &&
    #    brd[line[2]] == COMPUTER_MARKER
    #    return "Computer"
    #  end