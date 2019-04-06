=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

In: Word(string)
Out: Boolean (true or false)

Rules:
- words cannot have both letters from a block,
- a block can only be used once
- case insensitivity is applied while checking the word

Al:
- initialize a constant, set it equal to a hash
    inside the hash write spelling block as key value pairs
- define a method that takes a string as an argument
    iterate over the hash, checking if the string contains each key, and value
    if it does, return false, else go to next iteration
- return true in the end

=end

BLOCKS = {
'b' => 'o',
'x' =>  'k',
'd' => 'q',
'c' => 'p',
'n' => 'a',
'g' => 't',
'r' => 'e',
'f' => 's',
'j' => 'w',
'h' => 'u',
'v' => 'i',
'l' => 'y',
'z' => 'm'
}

def block_word?(word)
  word = word.downcase
  BLOCKS.each do |k,v|
    if ( word.include?(k) && word.include?(v) ) || (word.count(k) > 1 || word.count(v) > 1)
      return false
    else
      next
    end
  end
  true
end



p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('jjest') == false










