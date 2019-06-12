=begin
maurice slowest, steve's fastest
maurice' medium, sleeve's slowest
maurice' fastest, steeve's medium

=end

def maurice_wins(maurice, steve)
  maurice, steve = maurice.sort, steve.sort
  race_scores = [[maurice[0], steve[2]], [maurice[1], steve[0]], [maurice[2], steve[1]]]
  wins = 0
  race_scores.map do |a, b|
     wins += 1 if a > b
  end
  wins > 1 ? true : false
end

p maurice_wins([3, 5, 10], [4, 7, 11])
# Since the matches are (3, 11), (5, 4) and (10, 7), Maurice wins 2 out of 3.
p maurice_wins([6, 8, 9], [7, 12, 14])
# Since the matches are (6, 14), (8, 7) and (9, 12), Steve wins 2 out of 3.
p maurice_wins([1, 8, 20], [2, 9, 100])