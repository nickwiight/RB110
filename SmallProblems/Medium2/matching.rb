def balanced?(string, characters = '()')
  balance = 0
  string.chars.each do |char|
   balance += 1 if char == characters[0]
   balance -= 1 if char == characters[1]
    break if balance < 0
  end
  balance.zero?
end

p balanced?('What (is) this?')
p balanced?('What is) this?')
p balanced?('What (is this?')
p balanced?('((What) (is this))?')
p balanced?('((What)) (is this))?')
p balanced?('Hey!')
p balanced?(')Hey!(')
p balanced?('What ((is))) up(')
p balanced?('What ())(is() up')

p balanced?('What [is] this?', '[]')
p balanced?('What is] this?', '[]')
