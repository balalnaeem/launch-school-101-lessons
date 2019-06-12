def mergeArrays(a, b)
  a.zip(b) + b.drop(a.size)
end

p mergeArrays([1, 2, 3], ["a", "b", "c", "d", "e", "f"])