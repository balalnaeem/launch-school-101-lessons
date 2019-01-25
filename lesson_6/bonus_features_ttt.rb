def joinor(arr, delimiter=',', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
end

def find_at_risk_square(line, brd)
  if brd.values_at(*line).count(PLAYER_MARKER) == 2
    brd.select { |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_places_piece(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd)
    break if square
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def find_winning_square(line, brd)
  if brd.values_at(*line).count(COMPUTER_MARKER) == 2
    brd.select { |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end











loop do
  display_board(board)
  place_piece!(board, current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
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
    current_player = 'Computer'
  else
    current_player = 'Player'
  end
end

























