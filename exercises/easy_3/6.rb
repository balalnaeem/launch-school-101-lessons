=begin

In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

In: 2 arguments / 2 expressions
Out : Boolean

Rules : Returns true only if only one of the arguments is true. false in every other case.

Al:
  -def a method that takes two arguments
    use of if else condition
    if argument a is true and argument b is false || b is true and a false
      return true
    else
      return false
    end
  end
=end

def xor?(arg1, arg2)
  (arg1 && !arg2) || (!arg1 && arg2)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false