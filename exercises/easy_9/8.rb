def sequence n1, n2
  seq_arr = []
  current_num = n2
  n1.times do
    seq_arr << current_num
    current_num += n2
  end
  seq_arr
end

def sequence n1, n2
  (1..n1).to_a.map { |n| n * n2 }
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []