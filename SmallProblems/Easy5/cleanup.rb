ALPHABET = ('a'..'z').to_a

def cleanup(string)
  string.chars.map! do |letter|
    if ALPHABET.include?(letter)
      letter
    else
      ' '
    end
  end.join.squeeze(' ')
end

p cleanup("---what's my +*& line?")
