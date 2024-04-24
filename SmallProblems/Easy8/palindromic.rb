def palindromes(string)
  substrings(string).select do |substring|
    palindrome?(substring)
  end
end

def palindrome?(string, alphanumeric:false, ignore_case:false)
  string = string.gsub(/\W/, '') if alphanumeric
  string = string.downcase if ignore_case

  string == string.reverse && string.size > 1
end

def substrings(string)
  array = []

  string.size.times do |index|
    1.upto(string.size - index) { |size| array << string[index, size] }
  end

  array
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
