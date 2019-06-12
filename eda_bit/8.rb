#use gsub

def hacker_speak(str)
  str.gsub(/[aeios]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => 0, 's' => 5)
end