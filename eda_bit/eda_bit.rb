=begin
def xo str
  lowercase_str = str.downcase
  return true if lowercase_str.count('xo') == 0
  lowercase_str.count('x') == str.count('o')
end

p xo("ooxx") == true
p xo("xooxx") == false
p xo("ooxXm") == true
p xo("zpzpzpp") == true
p xo("zzoo") == false

def seven_ate_9(str)
  str.gsub('797', '77').gsub('7 97', '7 7').gsub('79 7', '7 7')
end

p seven_ate_9("797") == "77"
p seven_ate_9("7997") == "7997"
p seven_ate_9("1679 7") == "167 7"

=end
# require 'pry'




































