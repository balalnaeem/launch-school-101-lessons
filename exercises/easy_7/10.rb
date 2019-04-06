def penultimate(str)
  if str == "" || str == " "
    "It an empty string"
  elsif str.split.size < 3 || str.split.size.even?
    "There is no middle word in this phrase"
  else
    "The middle word is: #{str.split[str.split.size / 2]}."
  end
end

puts penultimate('last word')
puts penultimate('Launch School is great!')
puts penultimate('Launch School is great and also what!')
puts penultimate('')
