def factorize(int)
  (1..int).select { |n| int % n == 0 }
end

p factorize(12)