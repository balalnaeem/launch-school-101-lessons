=begin

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

=end

SQFOOT_TO_INCHES = 144
SQFOOT_TO_CENTIMETERS = 929.03

def prompt(message)
  puts "=> #{message}"
end

prompt("What's the length of the room in feet? Enter below.")
length = gets.chomp.to_f
prompt("What's the width of the room in feet? Enter below. ")
width = gets.chomp.to_f

area_sqfeet = (length * width).round(2)
area_sqinches = (area_sqfeet * SQFOOT_TO_INCHES).round(2)
area_sqcentimeters = (area_sqfeet * SQFOOT_TO_CENTIMETERS).round(2)

prompt("Area of the room in square feet is #{area_sqfeet}, in square inches is #{area_sqinches} and in square centimeters is #{area_sqcentimeters}")

