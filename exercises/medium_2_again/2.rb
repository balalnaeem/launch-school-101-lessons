=begin
We are given a collection of spelling blocks.
Each block has two letters.

Limits:
-Both letters in the block cannot be used.
-A block cannot be used twice either.
-So only one of the letters of the block can be used. And once only.

In: string
Out: true

Al:
-create a hash with block letters as key value pairs.
-iterate over the hash
  -on each iteration, check if the current key and value exists in the word
                      check if the key or value exists more than once
  return true or false depending on the result.
=end

BLOCK = {
  'B' => 'O',
  'X' => 'K',
  'D' => 'Q',
  'C' => 'P',
  'N' => 'A',
  'G' => 'T',
  'R' => 'E',
  'F' => 'S',
  'J' => 'W',
  'H' => 'U',
  'V' => 'I',
  'L' => 'Y',
  'Z' => 'M'
}

def block_word?(word)
  word = word.upcase
  BLOCK.each do |k,v|
    if word.include?(k) && word.include?(v)
      return false
    elsif word.count(k) > 1 || word.count(v) > 1
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






