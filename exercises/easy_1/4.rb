=begin

Write a method that counts the number of occurrences of each element in a given array.

Rules: The words in the array are case sensitive.

In: An array
Out: Print each element alongside the number of occurences

Al:
  - initilaize and empty array
  - iterate over the vehicles array
    - append each element into the new array if already not there
    - count the occurence of elemnts and print them out if not in the new array

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck',
]

def count_occurrences(arr)
  uniq_arr = []
  arr.each do |element|
    if uniq_arr.include?(element)
      next
    else
      uniq_arr << element
      puts "#{element} => #{arr.count(element)}"
    end
  end
end

# count_occurrences(vehicles)

# if words are not case sensitive


vehicles_2 = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences_2(arr)
  arr = arr.map(&:downcase)

  uniq_arr = []
  arr.each do |element|
    if uniq_arr.include?(element)
      next
    else
      uniq_arr << element
      puts "#{element} => #{arr.count(element)}"
    end
  end
end

count_occurrences_2(vehicles_2)