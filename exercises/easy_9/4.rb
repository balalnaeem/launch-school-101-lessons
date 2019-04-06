def sequence(num)
  (num <=> 1) == -1 ? (num..1).to_a : (1..num).to_a
end

p sequence(-5)