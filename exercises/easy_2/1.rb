=begin

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output => Teddy is 69 years old!

In: nothing
Out: a string that prints teddy's age

Rule: age should be a random number between 20 and 200

Al:
  -def method
  - puts string
  - inside the string inerpolate a random number between 20 and 200

Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.
=end

def print_teddy_age
  puts "Enter a name below:"
  name = gets.chomp.capitalize
  name = 'Teddy' if name.empty?
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

print_teddy_age