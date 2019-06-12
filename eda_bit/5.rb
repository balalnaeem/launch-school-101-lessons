=begin
Write a function that takes three input values (a, b, c) and returns the number of equal values.

In: 3 input values, strings or digits
Out: integer

Rules: output should be 0, 2 or 3

Count the number of values that are same.

Al:
  I can call uniq and count on the array and do a conditional statement
    if count is 3, answer is 0
      2 answer is 2
      1 answer is 3
=end

def equal(a, b, c)
  same_ele = [a, b ,c].uniq.count
  case same_ele
  when 3 then 0
  when 2 then 2
  else 3
  end
end

p equal(2,3,4)
p equal(7,3,7)
p equal(4,4,4)
p equal(7,3,4)
p equal(3,3,6)
p equal(1,1,1)
p equal(1,7,6)
p equal("a","toto","a")
p equal(7, 7, 7)

