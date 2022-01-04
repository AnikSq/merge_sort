# frozen_string_literal: true

def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2

  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])

  merge_two(left, right)
end

def merge_two(left, right)
  return_array = []

  left_index = right_index = 0

  while left_index < left.length && right_index < right.length
    if left[left_index] < right[right_index]
      return_array.push(left[left_index])
      left_index += 1
    else
      return_array.push(right[right_index])
      right_index += 1
    end
  end

  return_array.push(left[left_index..-1])
  return_array.push(right[right_index..-1])
  return_array.flatten!
  return_array
end

array = [200, 300, 600, 845, 1235, 543]

p merge_sort(array)
