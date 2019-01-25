question = 'How many times does a particular character appear in this sentence?'

def select_letter(string, char)
  counter = 0
  char_arr = string.chars
  char_arr.each do |current_char|
    if current_char == char
      counter += 1
    end
  end
  counter
end

puts select_letter(question, 'a') # => "aaaaaaaa"