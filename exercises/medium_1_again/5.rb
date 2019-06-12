=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

In: integer
Out: A diamond made out of stars, all sides will have equal stars

Al:
-lets suppose the integer is 5
firs line will out  *   => 2 spaces 1 stars
second line will   ***  => 1 spaces 3 stars
third line will   ***** => 0 spaces 5 stars
fourth line will   ***  => 1 spaces 3 stars
fifth line will     *   => 2 spaces 1 stars

two loops

first loop will print the upper half of the triangle (will include the longest line)
second loop will print the lower half of the trinangle

inside the first loop
  we have two variables spaces and stars
  spaces initial value will be n/2
  stars initial value will be 1

  after each iteration spaces -= 1 and stars += 2
  break out of when stars == n

  Inside the second loop
  spaces will increase by 1
  stars will decrease by 2
  break when stars == 1

=end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end



# diamond(3)
# diamond(1)
p diamond(9)
