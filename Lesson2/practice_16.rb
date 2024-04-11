def generate_uuid
  characters = []
  (0..9).each { |number| characters << number.to_s }
  ('a'..'f').each { |letter| characters << letter }

  sections = [8, 4, 4, 4, 12]

  sections.map! do |element|
    string = ''
    element.times {string << characters.sample}
    string
  end

  sections.join('-')
end

puts generate_uuid
puts generate_uuid
puts generate_uuid
