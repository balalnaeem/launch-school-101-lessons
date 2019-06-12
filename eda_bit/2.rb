def wurst_is_better(str)
  sausages = %w(kielbasa chorizo moronga salami sausage andouille naem merguez gurka snorkers pepperoni)
  str.split.map do |word|
    sausages.include?(word) || sausages.include?(word.downcase) ? "Wurst" : word
  end.join(" ")
end