=begin

Write a method that will take a short line of text, and print it within a box.

In: string
Out string in a box

Al:
  -def a method that takes a string
  -design a box based on the length of the string
  - puts the string in middle

=end

# def print_in_box(string)
#   horizontal_rule = "+#{"-" * (string.length + 2)}+"
#   empty_line = "|#{" " * (string.length + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{string} |"
#   puts empty_line
#   puts horizontal_rule
# end
MAXIMUM_LENGTH = 76

def print_in_box(str)
  line = ''
  lines = []
  str.split.each do |word|
    if (line.size + word.size) > MAXIMUM_LENGTH
      lines << line.strip
      line = ''
    end
    line += word + " "
  end
  lines << line.strip
  max_length_used = lines.map(&:size).max
  first_line_last = "+#{"-" * (max_length_used + 2)}+"
  empty_line = "|#{" " * (max_length_used + 2)}|"
  puts first_line_last
  puts empty_line
  lines.each { |line| puts "| #{line + (" " * (max_length_used - line.size))} |"}
  puts empty_line
  puts first_line_last
end


print_in_box('To boldly go where no one has gone before boldly go where no one has gone before boldly go where no one has gone before boldly go where no one has gone before boldly go where no one has gone before boldly go where no one has gone before boldly go where no one has gone before boldly go where no one has gone beforeboldly go where no one has gone before boldly go where no one has gone beforeboldly go where no one has gone before boldly go where no one has gone before.')
print_in_box('')






