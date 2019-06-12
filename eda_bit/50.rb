=begin
we are given a string of capital letters.
String might include 'A', 'B' or 'C'.
Each instance of 'A' in the string means one point for Andy. 'B' for Ben. 'C' for Charlotte.
If your name initial is not in the string, that means you scored 0 points.

=end
def calculate_scores(str)
  [str.count('A'), str.count('B'), str.count('C')]
end

p calculate_scores("A") ==[1, 0, 0]
p calculate_scores("ABC") ==[1, 1, 1]
p calculate_scores("ABCBACC") ==[2, 2, 3]