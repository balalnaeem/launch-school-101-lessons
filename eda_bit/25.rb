=begin
Given a number and an object with min and max properties, return true if the number lies within the given range (inclusive).

In: number, hash object(with :min, :max keys)
Out: boolean

Al:

create a range based on the values from the hash object and see if the number is included in that range

=end

def is_in_range(num, hsh)
  (hsh[:min]..hsh[:max]).include?(num)
end