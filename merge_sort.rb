

def merge_sort(numbers, left_number, right_number)
  # return if numbers.size == 1
  # split the numbers into two
  # numbers_left = numbers[0..numbers.length/2]
  # numbers_right = numbers[numbers.length/2+1..numbers.length]
  # merge_sort(numbers_left, left_number, right_number)
  # merge_sort(numbers_right, left_number, right_number)
  # merge(numbers_left, numbers_right)
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

input_one = [1,5,9,11]
input_two = [2,4,8]
puts merge(input_one, input_two).to_s

