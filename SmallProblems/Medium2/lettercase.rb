def letter_percentage(string)
  hash = letter_count(string)
  hash.each do |key, value|  
    hash[key] = (value.to_f / string.length * 100).round(1)
  end
  hash
end

def letter_count(string)
  hash = {}
  hash[:lowercase] = string.chars.count { |char| char =~ /[a-z]/ }
  hash[:uppercase] = string.chars.count { |char| char =~ /[A-Z]/ }
  hash[:neither] = string.chars.count { |char| char =~ /[^a-zA-Z]/ }
  hash
end

p letter_percentage('abCdef 123')
p letter_percentage('AbCd +Ef')
p letter_percentage('123')
p letter_percentage('abcdefGHI')
