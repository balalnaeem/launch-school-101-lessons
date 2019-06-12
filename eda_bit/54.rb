=begin
To train for an upcoming marathon, Johnny goes on one long-distance run each Saturday. He wants to track how often the number of miles he runs exceeds the previous Saturday. This is called a progress day.

Create a function that takes in an array of miles run every Saturday and returns Johnny's total number of progress days.

In: array
Out: Integer

Rules: progress day is number of miles run this saturday > last saturday miles. If they are equal that's not progress.

Al:
- progress day variable equal to zero
- iterate over the array
    - on each iteration check if the next number is bigger than current one
    - if it is increment the progress day variable by 1
    - dont do anything if it's the last element in the array
- return the progress variable
=end

# def progress_days(arr)
#   days = 0
#   arr.each_with_index do |miles, idx|
#     next if idx == 0
#     days += 1 if miles > arr[idx-1]
#   end
#   days
# end
# require 'pry'
def progress_days(runs)
  days = 0
  runs.each_cons(2) do |a|
    # binding.pry
    days += 1 if a[1] > a[0]
  end
  days
end

# p progress_days([3, 4, 1, 2]) == 2
p progress_days([10, 11, 12, 9, 10]) == 3
# p progress_days([6, 5, 4, 3, 2, 9]) == 1
# p progress_days([9, 9]) == 0