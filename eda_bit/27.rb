=begin
******* Numeric Seesaw *******
Rules:
- left heavy = if digits on left side are larger than digits on the right side
- right heavy = if digits on the right side are larger than the digits on the left side
- balanced = if digits on the both sides are equal

falcrum = middle digit when the number of digits in a number is odd
Ignore the falcrum if the number of digits is odd. Dont take it into account
if input is nil, output is balanced.

In: integer
Out: string
Al:
- if nil, return 'balanced'
- if number is odd, how to ignore the falcrum
    first of all convert the number in digits, save that in a variable
    delete the middle digit, mutate the object variable is pointing towads, making it even digits
- divide th digits in half, and compare
    how to divide them in half
    get a midpoint, and use range to access characters
=end

def seesaw(num)
  return "balanced" if num.nil?
  digits = num.digits.reverse
  midpoint = digits.size/2
  digits.delete_at(midpoint) if digits.size.odd?
  if digits[0..midpoint-1].join.to_i > digits[midpoint..-1].join.to_i
    "left"
  elsif digits[midpoint..-1].join.to_i > digits[0..midpoint-1].join.to_i
    "right"
  else
    "balanced"
  end
end

p seesaw(34492)
p seesaw(1143113)
p seesaw(585585)







