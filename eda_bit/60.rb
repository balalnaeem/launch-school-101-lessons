=begin
Given a word, create a hash which stores the indexes of each letter in an array.

Make sure the letters are the keys.
Make sure the letters are symbols.
Make sure the indexes are stored in an array and those arrays are values.
All strings provided will be lowercased

In: string
Out: hash object

Al:
-initailize a variable set it equal to an empty hash
-split the string into chars
-iterate over the chars with index
  - on each iteration check if the hash already has the key == current char
    if yes, push into the value of that key the current index
    if no, set key == char, and value equal to [idx]
-return hash
=end

def map_letters(str)
  index_hash = {}
  str.chars.each_with_index do |chr, idx|
    if index_hash.has_key?(chr.to_sym)
      index_hash[chr.to_sym].push(idx)
    else
      index_hash[chr.to_sym] = [idx]
    end
  end
  index_hash
end

p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }
