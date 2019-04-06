=begin

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

In: positive integer
Out: diplay a right angle triagle (return val doesn't matter)

Al:
  -def a method that takes a positive integer as an argument
    - define a valriable that would define the number of spaces you would need on each line spaces
    -use Integer#times method
      n would be 1 on first iteration, number of spaces is equal four, stars is equal to 1 (if the integer is 5)
      n would be 2 on the second iteration, number of spaces three, stars 2
      n would be 3 on the third iteration, number of spaces two, stars 3
      n would be 4 on the fourth iteration, number of spaces 1, stars 4
      n would be 5 on the fifth iteration, number of spaces 0 stars 5
  -end
=end


def triangle(num)
  stars = num
  num.times do |n|
    puts ("*" * stars) + (" " * n)
    stars -= 1
  end
end

triangle(10)
