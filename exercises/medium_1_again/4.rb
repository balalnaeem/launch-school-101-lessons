=begin *** 1000 lights ***

In: total number of switches(integer)
Out: array of integers (on lights)

Al:
firs of all I need to have an arry of all the lights in off state
[-n..-1]
digits in minus denote off lights
digits in plus denote on lights
I will achieve the toggle by mulitplying them with -1.
I need a counter to keep record of lights, that I am not going to toggle on each turn
a variable set equal to -1, so I can perform the the toggle on zero on first iteration

def a method that takes an integer
  create an array of all negative integers till -given integer
  initialize a variable counter set it equal to -1

now we need some sort of loop
  map over the array with index
    if index is <= counter
      go to next iteration
    else
      ele * -1
    end
  save the return value of that map, into the same array variable.
  break if counter >= size -1

select the integers that are plus. return that array.
=end

def max_toggle(n)
  all_lights = (1..n).to_a
  counter = 2
  loop do
    all_lights = all_lights.map do |light|
                   light % counter == 0 ? light * -1 : light
                 end
    counter += 1
    break if counter > all_lights.size
  end
  all_lights.select { |e| e > 0 }
end


# *** TEST CASES ***

p max_toggle(5) #== [1, 4]
p max_toggle(10) #== [1, 4, 9]
