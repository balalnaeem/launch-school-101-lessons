def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator!")
  prompt("-------------------------------")

  prompt("What is the loan amount?")

  amount = ''
  loop do
    amount = Kernel.gets().chomp()

    if amount.empty?() || amount.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is the loan duration (in years)?")

  years = ''
  loop do
    years = Kernel.gets().chomp()

    if years.empty?() || years.to_i() < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_payment = amount.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months.to_i())))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")

"Your monthly payment is: $ %.2f" % [monthly_payment]

# =begin

# I:  Loan amount
#     APR
#     Loan duration

# O:  Monthly interest payment

# AL:
#   get loan amount
#   get APR
#   get loan duration
#   convert APR to monthly interest rate
#   convert duration into months

#   apply the formula

# =end
# require 'pry'

# def prompt(message)
#   puts " >> #{message}"
# end

# def valid_number?(num)
#   num.to_i.to_s == num
# end

# prompt("Hello! Welcome to mortgage calculator!")

# pp = ''
# loop do
#   prompt("Enter the loan amount. (e.g. 50000) ")
#   pp = gets.chomp
#   if valid_number?(pp)
#     pp = pp.to_f
#     break
#   else
#     prompt("That doesn't seem like a valid number. Try again.")
#   end
# end

# apr = ''
# loop do
#   prompt("Enter the APR. (e.g. type 5 for 5%)")
#   apr = gets.chomp
#   if valid_number?(apr)
#     apr = apr.to_f / 100
#     break
#   else
#     prompt("That doesn't seem like a valid number. Try again.")
#   end
# end

# j = apr / 12

# years = ''
# loop do
#   prompt("Enter the loan duration. e.g.(12 for 12 years)")
#   years = gets.chomp
#   if valid_number?(years)
#     years = years.to_f
#     break
#   else
#     prompt("That doesn't look like a valid number. Try again")
#   end
# end

# n = years * 12

# m = pp * (j / (1 - (1 + j)**(-n)))

# prompt("Your monthly payment is #{m}.")

# prompt("Thank you for using the mortgage calculator.")



















