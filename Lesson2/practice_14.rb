hash = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

array = []

hash.each_value do |info|
  if info[:type] == 'fruit'
    array << info[:colors].map(&:capitalize)
  else
    array << info[:size].upcase
  end
end

p array

p(hash.map do |_, info|
  if info[:type] == 'fruit'
    info[:colors].map(&:capitalize)
  else
    info[:size].upcase
  end
end)
