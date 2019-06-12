=begin
Rules:
- we are given a string
- insdide the string there are letters and there are numbers next to them
- in the output, we can see that each letter is multiplied by the number next to it, and numbers have disappeared magically.

In: string
Out: string

Al:

- split the string into chars
- lets use each_slice
- each slice the given char array into sizes of 2

=end

def mystery_func(str)
  str.chars.each_slice(2).to_a.map { |a, b| a * b.to_i }.join
end

p mystery_func("A4B5C2") == "AAAABBBBBCC"
p mystery_func("C2F1E5") == "CCFEEEEE"
p mystery_func("T4S2V2") == "TTTTSSVV"
p mystery_func("A1B2C3D4") == "ABBCCCDDDD"