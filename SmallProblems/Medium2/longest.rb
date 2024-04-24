senteces = File.read('example.txt').split(/\.|\?|!/)
longest = senteces.max_by { |sentence| sentence.split.length }
longest.gsub!(/\n/, ' ')
puts longest.strip
puts longest.split.length
