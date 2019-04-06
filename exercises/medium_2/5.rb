=begin

In: 3 integers (lenghts of three sides of a triangle)
Out: Symbol

Rules:
- equilateral: All 3 sides are of equal length
- isosceles 2: sides are of equal length, while the 3rd is different
- scalene: All 3 sides are of different length

- invalid: sum of the two smallest lengths is not greater than the longest side. (What is the sum is equal?)
- All sides must have a length greater than zero, otherwise invalid

Al:
- def a method that takes three numbers as an argument
- return :invalid if any of the sides is zero
- sort the array, and check if the sum of first 2 elements is greater than the last one, if not invalid
- call unique on the array of the values, and call size on the returning array
  = 1 equilateral
  = 2 isosceles
  = 3 scalene
=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if ( sides.any?(&:zero?) || sides[0, 2].sum <= sides.last )
  if sides.uniq.size == 1
    :equilateral
  elsif sides.uniq.size == 2
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

