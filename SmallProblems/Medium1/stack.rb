def minilang(string)
  register = 0
  stack = []
  string.split.each do |command|
    case command
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'PRINT' then puts register
    else              register = command.to_i
    end
  end
end

minilang('PRINT')
puts '-------------------'
minilang('5 PUSH 3 MULT PRINT')
puts '-------------------'
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
puts '-------------------'
minilang('5 PUSH POP PRINT')
puts '-------------------'
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
puts '-------------------'
minilang('3 PUSH PUSH 7 DIV MULT PRINT')
puts '-------------------'
minilang('4 PUSH PUSH 7 MOD MULT PRINT')
puts '-------------------'
minilang('-3 PUSH 5 SUB PRINT')
puts '-------------------'
minilang('6 PUSH')
