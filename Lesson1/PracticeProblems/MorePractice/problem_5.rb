flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]

puts( flintstones.index do |name|
  name.start_with? 'Be'
end)
