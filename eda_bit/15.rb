=begin
Create a function that takes a sequence of either strings or integers, removes the surrounding duplicates and returns an array of items without any items with the same value next to each other and preserves the original order of items.

The initial sequence of items can be either a string or an array.
Tests are case sensitive.
=end

def unique_in_order(sequence)
  new_seq = sequence.is_a?(String) ? sequence.chars : sequence
  result_arr = []
  new_seq.each_with_index do |e, i|
    if result_arr.last == e
      next
    else
      result_arr << e
    end
  end
  result_arr
end

def unique_in_order(input)
  input = input.chars unless input.is_a?(Array)
  input.chunk_while { |a, b| a == b }.map(&:first)
end

p unique_in_order("AAAABBBCCDAABBB")
