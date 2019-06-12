# Mexican Wave


def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == " "
    result << str[0...idx] + char.upcase + str[idx+1..-1]
  end
  result
end