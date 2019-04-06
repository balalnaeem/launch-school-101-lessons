def palindromic_number?(num)
  num.to_s.chars == num.to_s.chars.reverse
end



# puts palindromic_number?(34543) == true
# puts palindromic_number?(123210) == false
# puts palindromic_number?(22) == true
puts palindromic_number?(01010) == true