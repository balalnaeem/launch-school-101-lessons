=begin

In: three integers( three angles of the triangle)
Out: a symbol (:right, :acute, :obtuse, :invalid)

Rules:
- sum of all angles must be euqla to 180 - :invalid if not
- none of the angles should be zero - :invalid if not

Al:
- def a method that takes 3 integers an argument
- put the given angles in an array
- check if any of the angles is zero && sum of angles is equal to 180 - :invalid condition
- check the max value out of angles
  if == 90 :right
    < 90 :acute
    > 90 obtuse
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  case
  when angles.include?(0), angles.sum != 180 then :invalid
  when angles.max == 90 then :right
  when angles.max < 90 then :acute
  else :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
