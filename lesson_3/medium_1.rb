# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# def validate?(number)
#   if number > 0
#     true
#   else
#     false
#   end
# end

# def factors(number)
#   if number > 0
#     dividend = number
#     divisors = []
#   else
#     return "#{number} is not a positive number. Please try again"
#   end
#   loop do
#     break unless dividend > 0
#     divisors << dividend if number % dividend == 0
#     dividend -= 1
#   end
#   divisors
# end

# puts factors(25)




# def fib(first_num, second_num, limit)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(2, 3, 15)
# puts "result is #{result}"



# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param << " rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]

# not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  new_hash = demo_hash
  new_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters










