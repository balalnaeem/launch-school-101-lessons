puts ">> Enter an integer greater than 0"
num = gets.to_i
puts ">> Enter 's' to compute the sum, p to computer the product."
choice = gets.chomp

loop do
  break if %w(s p).include?(choice)
  puts "Unknown operation. Please enter the correct option."
  choice = gets.chomp
end

if choice == 's'
  puts "Sum of integers between 1 and #{num} is #{(1..num).reduce(:+)}."
else
  puts "Product of integers between 1 and #{num} is #{(1..num).reduce(:*)}."
end
