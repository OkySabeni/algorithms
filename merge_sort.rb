def merge_sort(numbers)
  return numbers if numbers.size <= 1

  numbers_left = numbers[0...numbers.length/2]
  numbers_right = numbers[numbers.length/2..numbers.length]

  sorted_numbers_left = merge_sort(numbers_left)
  sorted_numbers_right = merge_sort(numbers_right)

  merge(sorted_numbers_left, sorted_numbers_right)
end

def merge(array_one, array_two)
  results = Array.new

  while(!array_one.empty? && !array_two.empty?)
    if array_one.first < array_two.first
      results.push(array_one.shift)
    else
      results.push(array_two.shift)
    end
  end

  return results.push(*array_two) if array_one.empty?
  results.push(*array_one) if array_two.empty?
end

# input_one = [2,1]
# input_two = [12,5]
# puts merge(input_one, input_two).to_s

input = [2,1,12,5,6,7,9,13].shuffle
puts merge_sort(input).to_s
