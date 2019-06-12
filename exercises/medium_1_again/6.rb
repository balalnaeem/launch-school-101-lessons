=begin

I can initialize a hash where stack => array of value and register will be register will be Zero.

and keep adding commands as I go along.

commands will be given as a string, I will convert that string to an array. and start from the first element and implement the commands. It will be some sort of loop structure. And loop will break once the commands array is empty.
=end

def minilang(commands)
  minilang_hash = { stack: [], register: 0 }
  commands = commands.split
  loop do
    current_command = commands.shift

    case current_command
    when 'PRINT' then p minilang_hash[:register]
    when 'PUSH'  then minilang_hash[:stack] << minilang_hash[:register]
    when 'MULT'  then minilang_hash[:register] = minilang_hash[:stack].pop * minilang_hash[:register]
    when 'ADD'   then minilang_hash[:register] = minilang_hash[:stack].pop + minilang_hash[:register]
    when 'POP'   then minilang_hash[:register] = minilang_hash[:stack].pop
    when 'DIV'   then minilang_hash[:register] = minilang_hash[:register] / minilang_hash[:stack].pop
    when 'MOD'   then minilang_hash[:register] = minilang_hash[:register] % minilang_hash[:stack].pop
    when 'SUB'   then minilang_hash[:register] = minilang_hash[:register] - minilang_hash[:stack].pop
    when /[0-9]/ then minilang_hash[:register] = current_command.to_i
    else p 'There is an error. Command not valid.'
    end

    break if commands.empty?
  end
end

# p minilang('PRINT')
# p minilang('5 PUSH 3 MULT PRINT')
# p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# p minilang('5 PUSH POP PRINT')
# p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# p minilang('-3 PUSH 5 SUB PRINT')
p minilang('3 PUSH 5 MOD PUSH 3 PUSH 7 PUSH 5 PUSH 4 MULT SUB ADD DIV PRINT')
# (3 + (4 * 5) - 7) / (5 % 3)


