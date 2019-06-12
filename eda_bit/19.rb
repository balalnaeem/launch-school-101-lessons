

def maskify(str)
  return str if str.size <= 4
  new_str = str.chars.drop(str.size - 4).join
  "#" * (str.size - 4) + new_str
end

p maskify("4556364607935616")