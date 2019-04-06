def diamond num
  return puts "*" if num == 1
  spaces = num / 2
  stars = 1

  loop do
    puts (" " * spaces) + ("*" * stars)
    spaces -= 1
    stars += 2
    break if spaces < 0
  end

  spaces = 1
  stars = num -2

  loop do
    puts (" " * spaces) + ('*' * stars)
    spaces += 1
    stars -= 2
    break if stars < 1
  end
end

diamond 1