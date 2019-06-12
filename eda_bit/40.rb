=begin

Write a function that takes four string arguments. You will be comparing the first string to the three next strings. Verify if the first string starts with the second string, includes the third string, and ends with the fourth string. If the first string passes all checks, return the string "My head, body, and tail.", otherwise, return "Incomplete.".

In: 4 strings
Out: string


Rules:
- comparing the first string to the next 3
- Verify if the first string
    **starts with the second string
    **includes the third string
    **ends with the fourth string
- Tests are case sensitive.

Al:
-def a method that takes 4 strings as arguments
  my checks will be:
  starts with the second string = str1[0, str2.size] == str 2
  includes the third string = str1.include?(str3)
  end with the fourth string = str1[-1..-(str4.size)]
if it passes all these checks, return "My head, body, and tail."
else return "Incomplete".
=end

def verify_substrs(str1, str2, str3, str4)
  if str1[0...str2.size] == str2 && str1.include?(str3) && str1[-1..-(str4.size)]
    "My head, body, and tail."
  else
    "Incomplete."
  end
end

p verify_substrs("Onomatopeia", "on", "mato", "ia")