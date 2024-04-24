def find_anagrams(array)
  hash = Hash.new { |hash, key| hash[key] = []}
  array.each do |word|
    hash[word.chars.sort.join] << word
  end

  hash.each_value do |value|
    puts '----------------'
    p value
  end
end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

find_anagrams(words)
