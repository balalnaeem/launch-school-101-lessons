def rotate_array arr
  return arr if arr.empty? || arr.size == 1
  rotated_arr = []
  idx = 1
  loop do
    break if idx >= arr.size
    rotated_arr << arr[idx]
    idx += 1
  end
  rotated_arr << arr.first
end

def rotate_array arr
  rotated_arr = []
  arr.each do |ele|
    next if ele == arr.first
    rotated_arr << ele
  end
  rotated_arr << arr.first
end

def rotate_array arr
  rotated_arr = Array.new(arr)
  rotated_arr.shift
  rotated_arr << arr.first
end

def rotate_string str
  rotate_array(str.chars).join
end

def rotate_integer int
  rotate_array(int.digits.reverse).join.to_i
end

puts rotate_integer(12345)
# puts rotate_string("Hello")
# puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# puts rotate_array(['a']) == ['a']
# x = [1, 2, 3, 4]
# puts rotate_array(x) == [2, 3, 4, 1]
# x == [1, 2, 3, 4]