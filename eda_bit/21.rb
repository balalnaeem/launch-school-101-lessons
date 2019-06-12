=begin
In: array and string
Out: array

Al:
- transformation of the array happening
- so we could use Array#map
- iterate over the array, append the given string to each element
- and return the array
=end

def add_ending(arr, str)
  arr.map { |ele| ele << str }
end

p add_ending(["clever", "meek", "hurried", "nice"], "ly") == ["cleverly", "meekly", "hurriedly", "nicely"]