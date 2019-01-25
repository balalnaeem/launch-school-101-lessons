def iq_test(numbers)
  num_arr = []
  numbers.split.each { |num| num_arr << num.to_i }

  odd_numbers, even_numbers = num_arr.partition do |num|
    num.odd?
  end
  if odd_numbers.size == 1
    num_arr.index(odd_numbers.first) + 1
  else
    num_arr.index(even_numbers.first) + 1
  end
end

p iq_test("2 4 7 8 10")