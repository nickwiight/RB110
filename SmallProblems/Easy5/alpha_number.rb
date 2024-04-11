NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten
                  eleven twelve thirteen fourteen fifteen sixteen seventeen
                  eighteen nineteen)

def alphabetic_number_sort(array) 
  array.sort_by { |element| NUMBER_WORDS[element] }
end

p alphabetic_number_sort((1..19).to_a)
