def is_prime?(num)
  (2...num).each { |n| return false if num % n == 0}
  true
end

def find_prime(start, stop)
  (start..stop).select do |num|
    is_prime?(num)
  end
end

p find_prime(7,19)

