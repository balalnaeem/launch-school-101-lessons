def multiply(num1, num2)
  num1 * num2
end

def power (base, expo)
  result = 1
  expo.times { result = multiply(result, base) }
  reuslt
end
