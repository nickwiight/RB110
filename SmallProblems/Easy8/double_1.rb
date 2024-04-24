def repeater(string)
  # string.chars.zip(string.chars).join
  string.gsub(/(.)/, '\1\1')
end

p repeater('Hello')
p repeater('Good job!')
p repeater('')
