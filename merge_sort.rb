
def merge_sort(array)
  if array.length <= 1
    return array
  end

  array_size = array.length
  mid = (array.length / 2).round

  left = array[0...mid]
  right = array[mid...array_size]

  left_sorted = merge_sort(left)
  right_sorted = merge_sort(right)

  merge(array, left_sorted, right_sorted)

  p array
end

def merge(array, left_sorted, right_sorted)
  left_size = left_sorted.length
  right_size = right_sorted.length

  point = 0
  left_point = 0
  right_point = 0

  while left_point < left_size && right_point < right_size
    if left_sorted[left_point] < right_sorted[right_point]
      array[point] = left_sorted[left_point]
      left_point+=1
    else
      array[point] = right_sorted[right_point]
      right_point+=1
    end
    point+=1
  end

  while left_point < left_size
    array[point] = left_sorted[left_point]
    left_point+=1
    point+=1
  end

  while right_point < right_size
    array[point] = right_sorted[right_point]
    right_point+=1
    point+=1
  end

  return array
end

numbers = []
puts "How many numbers do you want to enter:"
choice = gets.chomp.to_i

loop do
  puts 'Enter a random number:'
  input = gets.chomp.to_i
  puts ' '

  numbers.push(input)

  break if numbers.length == choice
end
puts " "
puts "Array before being sorted: #{numbers}"
puts "The sorted array is: #{merge_sort(numbers)}"
