=begin
Create two functions to_camel_case() and to_snake_case() that each take a single string and convert it into either camelCase or snake_case.

to_camel_case()

In: String (snake case)
Out: String (camel case)

Rules: convert the string into the camel_case

Al:
-def a method that takes a string as an argument
  -split the string at every (_) into array for transformation purpoose
  -iterate over the array capitalize each word
  -join the array
=end

def to_camel_case(str)
  str.split('_').map.with_index do |word, idx|
    if idx > 0
      word.capitalize
    else
      word
    end
  end.join
end


=begin

to_snake_case

In: String (camelCase)
Out: String (snake_case)

Rules: convert the string into snake_case
Al:
-def a method that takes a string
  -split the string into an array for iteration purposes
  -iterate oever the array for transformation purpose
  -if any letter is uppercase, downcase it and add '_' before it.
  -join the array
=end

def to_snake_case(str)
  str.chars.map { |e| e == e.upcase ? "_#{e.downcase}" : e }.join
end
























