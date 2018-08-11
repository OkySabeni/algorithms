

def _merge_sort(left_numbers, right_numbers)
  return merge(left_numbers, right_numbers) if numbers.size == 1 && right_numbers == 1

  # split the numbers into two
  numbers_left = numbers_left[0..left_numbers.length/2]
  numbers_right = numbers_right[left_numbers.length/2+1..left_numbers.length]

  _merge_sort(numbers_left, numbers_right)
  # _merge_sort(numbers_right, left_number, right_number)
  # merge(numbers_left, numbers_right)
end

@count = 7

def merge_sort(numbers)
  # @count -= 1
  # exit(1) if @count == 1
  puts "numbers: #{numbers}"
  return numbers if numbers.size == 1

  numbers_left = numbers[0...numbers.length/2]
  numbers_right = numbers[numbers.length/2..numbers.length]

  puts "numbers_left: #{numbers_left}"
  puts "numbers_right: #{numbers_right}"

  # if numbers_left.size == 1 && numbers_right.size == 1
  #   merge(numbers_left, numbers_right)
  # else
  #
  # end

  merge_sort(numbers_left)
  merge_sort(numbers_right)

  results = merge(numbers_left, numbers_right)
  results
end

def merge(array_one, array_two)
  puts "merging: #{array_one}, #{array_two}"
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

input_one = [2,1]
input_two = [12,5]
puts merge(input_one, input_two).to_s

puts merge_sort([2,1,12,5]).to_s
