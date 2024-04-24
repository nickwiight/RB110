def rotate_array(array)
  copy = array.dup
  copy.push(copy.shift)
end

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(number)
  rotate_array(number.digits.reverse).join.to_i
end

x = [1, 2, 3, 4]
p rotate_array(x)
p x

s = 'String'
p rotate_string(s)
p s

n = 1234
p rotate_integer(n)
p n
