def fizz_buzz(num1, num2)
  fizzbuzz_arr = []
  (num1..num2).each do |num|
    if (num % 3 == 0 && num % 5 == 0)
      fizzbuzz_arr << "FizzBuzz"
    elsif num % 5 == 0
      fizzbuzz_arr << "Buzz"
    elsif num % 3 == 0
      fizzbuzz_arr << "Fizz"
    else
      fizzbuzz_arr << num
    end
  end
  puts fizzbuzz_arr.join(', ')
end

fizz_buzz 1, 15