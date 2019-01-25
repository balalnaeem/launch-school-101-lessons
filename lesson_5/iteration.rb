# An element in an array is dominant if it is greater than all elements to its right. You will be
# given an array and your task will be to return a list of all dominant elements. For example:

# solve([1,21,4,7,5]) = [21,7,5] because 21, 7 and 5 are greater than elments to their right.
# solve([5,4,3,2,1]) = [5,4,3,2,1]

# Notice that the last element is always included.

=begin
input: an array of integers
output: an array of dominant integers
req: to find all dominant numbers + the last number element is always included
steps:

-to iterate through each element
- on each iteration compare all the other elements on the right
- if any element on the right is greater that current element
  then continue
  if current element is greater trhan the rest
  select current element

=end

def solve(numbers)
  dominants = []

  numbers.each_with_index do |dominant, index|
    rest = numbers[index + 1..-1]
   if rest.select { |n| n > dominant }.size == 0
     dominants << dominant
   end
  end
  dominants.uniq
end
p solve([16,17,14,3,14,5,2]) == [ 17,14,5,2]
p solve([ 92,52,93,31,89,87,77,105]) == [105]
p solve([ 75,47,42,56,13,55]) == [75,56,55]
p solve([ 67,54,27,85,66,88,31,24,49]) == [88,49]
