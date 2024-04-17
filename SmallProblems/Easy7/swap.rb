def swapcase(string)
  string.chars.map do |character|
    if character =~ /[a-z]/
      character.upcase
    elsif character =~ /[A-Z]/
      character.downcase
    else
      character
    end
  end.join
end

string = 'PascalCase'
p swapcase(string)
p string
p swapcase('Tonight on XYZ-TV')
