=begin
-treat people as integers
- two ice cream a and b, each occupy a spot on the beach from [0, 100] for example: [32, 69]
- people are distributed equally from 0 to 100
- people will go to their closest ice cream spot
    - distance is calculated by finding out the difference between a person's position and ice cream stand's position.
    - whatever stand is at less distance, that's the stand the person will go to.
- profit = total people served by that ice cream stand | each person is an integer ( each integer will go to the closest ice cream spot)
-ignore the ties | if some integer is at the same distance from both spots, don't count them.

example: profit for [32, 69] spots is  [51, 50].
tie example: profit for (49, 51) spots is [50, 50]. 0-49 == 50 & 51-100 == 50, person at the 50 spot it ignored.
-There are total 101 people frm 0-100

In: arr
Out: arr

AL:
initialize a variable called a's profit and set it equal to 0
initialize a variable called b's profit and set it equal to 0

create a range of people from 0..100
  iterate over that range
    on each iteration check the distance between current person and a's spot
    on each iteration check the distance between current person and b's spot
      what ever distance is smaller, their variable gets incremented.
How am I gonna calculate the difference?
  subtact the person(num) from a'spot(num).abs
  same for b.

return both profits in an array
=end

def profit(a, b)
  a_profit, b_profit = 0, 0
  (0..100).each do |person|
    if (person - a).abs < (person - b).abs
      a_profit += 1
    elsif (person - b).abs < (person - a).abs
      b_profit += 1
    else
      next
    end
  end
  [a_profit, b_profit]
end

def profit(a, b)
  m = (b - a) / 2.0 + a
  [m.round, (100 - m).round]
end

p profit(32, 69)
# p profit(49, 51)
# p profit(0, 1)























