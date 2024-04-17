# def letter_case_count(string)
#   hash = { lowercase: 0, uppercase: 0, neither: 0 }

#   string.chars.each do |character|
#     if character.match?(/[a-z]/)
#       hash[:lowercase] += 1
#     elsif character.match?(/[A-Z]/)
#       hash[:uppercase] += 1
#     else
#       hash[:neither] += 1
#     end
#   end

#   hash
# end

def letter_case_count(string)
  {
    lowercase: string.count('a-z'),
    uppercase: string.count('A-Z'),
    neither: string.count('^a-zA-Z'),
  }
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')
