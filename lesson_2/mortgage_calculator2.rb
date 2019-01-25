def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the mortgage calculator!")

prompt("Please enter the Loan amount below.(e.g. 10000)")

loan_amount = gets.chomp.to_f

prompt("What is your APR (Annual Percentage Rate)? Enter digits only. (e.g. 5 for 5%)")
annual_rate = gets.chomp.to_f

monthly_rate = annual_rate /100 / 12

prompt("What is your loan duration? (e.g. 5 years, 10 years)")

duration_years = gets.chomp.to_i
duration_months = duration_years * 12


monthly_payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months)))

prompt("Your monthly payment is #{format('%.2f', monthly_payment)}")



























