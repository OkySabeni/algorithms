require 'ap'

def quick_sort(numbers)
  return numbers if numbers.size <= 1

  # pick the first value as pivot
  pivot = numbers.first

  # identify leftmark position as pivot + 1
  leftmark = 1
  # identify rightmark position as end of array
  rightmark = numbers.size - 1

  loop do
    loop do
      break if leftmark > rightmark
      break if numbers.at(leftmark) > pivot
      leftmark += 1
    end

    loop do
      break if rightmark < leftmark
      break if numbers.at(rightmark) < pivot
      rightmark -= 1
    end

    if leftmark > rightmark
      swap(numbers, rightmark, 0)
      quick_sort(numbers[0...rightmark])
      quick_sort(numbers[rightmark+1...numbers.size])
      break
    end

    swap(numbers, leftmark, rightmark)
  end
end

def swap(array, index1, index2)
  temp = array.at(index1)
  array[index1] = array.at(index2)
  array[index2] = temp
  ap "swapped array: #{array}"
  array
end

input = [2,1,12,5,6,7,9,13].shuffle
input = [6, 9, 1, 7, 2, 13, 5, 12]
quick_sort(input)
