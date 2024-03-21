flintstones = %w[Fred Barney Wilma Betty Pebbles Bambam]

puts(flintstones.each_with_object({}) do |name, hash|
  hash[name] = hash.size
end)

hash = {}
flintstones.each_with_index do |name, index|
  hash[name] = index
end

puts hash
