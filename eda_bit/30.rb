=begin
You have an array of integers and for each index you want to find the product of every integer except the integer at that index.

In: array of integers
Out: array of integers(products)

Al:
- use map on the array for iterating
    - at each iteration, inside the map, use reject, to take out the current element
    - and find product of every other element
    - that should be the return statement inside map
=end

def get_products(arr)
  arr.map do |num|
    arr.reject { |e| e == num }.reduce(:*)
  end
end

p get_products([1, 7, 3, 4])