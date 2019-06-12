=begin
Create a function that takes an array (slot machine outcome) and returns true if all elements in the array are identical, and false otherwise. The array will contain 4 elements.

=end

def test_jackpot(arr)
  arr.uniq.size == 1
end