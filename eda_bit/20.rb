=begin
An array is special, if every even index contains an even number and every odd index contains an odd number. Write a function that returns true if an array is special, and false otherwise.

In: array
Out: boolean(true or false)

Al:
- define a method that takes an array as an argument
- iterate over the array with index
    if current index is even
      return false if the number on that index is not even
    if current index is odd
      return false if number on that index is not odd
=end

def isSpecialArray(arr)
  special = true
  arr.each_with_index do |num, idx|
    if idx.even?
      special = false if num.odd?
    else
      special = false if num.even?
    end
  end
  special
end

p isSpecialArray([2, 7, 4, 9, 6, 1, 6, 3])
p isSpecialArray([2, 7, 9, 1, 6, 1, 6, 3])
