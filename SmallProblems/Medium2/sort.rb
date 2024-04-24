def bubble_sort!(array)
  length = array.size - 1
  loop do
    continue = false

    length.times do |index|
      next if array[index] <= array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
      continue = true
    end
    length -= 1

    break unless continue
  end
end

array = [5, 3]
bubble_sort!(array)
p array

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array
