=begin

  -define the method that takes an array of strings as argument
    -SET a variable equal to empty string
    -iterate over the array
      -add each string to the SET variable
    return the variable
  -end

=end

def concat_array(arr)
  final_string = ""
  arr.each do |word|
    final_string += word
  end
  final_string
end

animals = ['monkey', 'lion', 'cat', 'dog', 'snake']

puts concat_array(animals)