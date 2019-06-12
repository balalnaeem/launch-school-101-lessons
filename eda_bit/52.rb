def is_mini_sudoku(arr)
  arr.flatten.sum == (1..9).reduce(:+)
end

p is_mini_sudoku([[1, 3, 2], [9, 7, 8], [4, 5, 6]])