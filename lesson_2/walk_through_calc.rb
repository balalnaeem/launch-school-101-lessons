require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def valid_operator?(op)
  %w(1 2 3 4).include?(op)
end

def operator_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
  end
  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt(MESSAGES['f_num'])
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['wrong_num'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['s_num'])
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['wrong_num'])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide.
  MSG

  prompt(operator_prompt)

  operation = ''
  loop do
    operation = gets.chomp
    if valid_operator?(operation)
      break
    else
      prompt(MESSAGES['valid_operation'])
    end
  end

  prompt("#{operator_message(operation)} the two numbers...")

  result = case operation
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}.")

  prompt(MESSAGES['another'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt(MESSAGES['thanks'])
