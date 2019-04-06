=begin
In: an array
Out: same array (bubble sorted)

Rules:
- each pair of consecutive elements in array are compared
- if the first one is bigger than the second one, we swap their places
- if not, we don't do anything and go to the next iteration
- when we iterate through the whole array without swapping, we can stop
- method will mutate the caller

Al:
- def a method that takes an array as an argument
- start a loop
    initialize a variable swap and set it equal to zero
    iterate over the array with index
    compare the element and the element at the next index
    swap if current element is bigger
      each time you swap increment the swap variale
  break the loop if swap is equal to zero

    what do I do for the last element??
      if the last element in the array is equal to the current element, go to the next iteration
=end

def bubble_sort!(arr)
  loop do
    swaps = 0
    arr.each_with_index do |ele, idx|
      next if arr.last == ele
      if ele > arr[idx+1]
        arr[idx], arr[idx+1] = arr[idx+1], ele
        swaps += 1
      else
        next
      end
    end
    break if swaps.zero?
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)




