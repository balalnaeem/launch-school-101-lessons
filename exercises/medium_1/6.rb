def error_detection(str)
  puts "Error: Uknown command."
end

def minilang commands
  stack = []
  register = 0
  commands.split.each do |current_command|
    case current_command
    when 'PRINT' then puts register
    when 'PUSH'  then stack << register
    when 'MULT'  then register = stack.pop * register
    when 'ADD'   then register += stack.pop
    when 'POP'   then register = stack.pop
    when 'DIV'   then register = register / stack.pop
    when 'MOD'   then register = register % stack.pop
    when 'SUB'   then register = register - stack.pop
    else
      if current_command.match?(/[0-9]/)
        register = current_command.to_i
      else
        error_detection(current_command)
      end
    end
  end
end

minilang ''