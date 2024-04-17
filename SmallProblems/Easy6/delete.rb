VOWELS = 'aeiouAEIOU'

def remove_vowels(array)
  array.map { |element| element.delete(VOWELS) }
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))
