# def buy_fruit arr
#   result = []
#   arr.each do |a,b|
#     b.times { result << a }
#   end
#   result
# end

def buy_fruit arr
  arr.map { |a,b| [a] * b }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]