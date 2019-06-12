def reverse_image(arr)
  arr.map do |sub_arr|
    sub_arr.map { |ele| ele == 1 ? 0 : 1 }
  end
end

p reverse_image([[1, 0, 0], [0, 1, 0], [0, 0, 1]]) == [[0, 1, 1], [1, 0, 1], [1, 1, 0]]