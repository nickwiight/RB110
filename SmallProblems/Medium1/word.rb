NUMBER_WORDS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(string)
  NUMBER_WORDS.keys.each do |key|
    string.gsub!(/\b#{key}\b/, NUMBER_WORDS[key])
  end
  string
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.')
