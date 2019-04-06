=begin
given = a number

Al:
-def a method that takes a numbers
-initialize a hash with n key value pairs
  -all keys are numbers ranging from 1 to n
  -all value are true, since all lights are turned on
  initialize a variable counter = 1


=end

def output_message arr
  if arr.size == 1
    arr.first
  elsif arr.size == 2
    arr.join(" and ")
  else
    arr[-1] = "and #{arr.last}"
    arr = arr.join(', ')
  end
end

def toggle_lights(num)
  lights = {}
  num.times { |n| lights[n+1] = true }
  counter = 1
  loop do
    counter += 1
    lights.each do |k,v|
      if k.modulo(counter).zero?
        lights[k] = (v == true ? false : true)
      end
    end
    break if counter > num
  end

  on_lights = lights.select { |k,v| k if v == true }.keys
  off_lights = lights.keys - on_lights

  puts "Lights #{output_message(off_lights)} are now off; #{output_message(on_lights)} are now on."
end

toggle_lights(5)



