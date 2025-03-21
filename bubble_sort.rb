#!/usr/bin/env ruby

def bubble_sort(array)
  max = array.max
  min = array.min

  until array[-1] == max && array[0] == min
    0.step(array.length - 1) do |index|
      break if index == array.length-1
      if array[index+1] < array[index]
        temp = array[index]
        array[index] = array[index+1]
        array[index+1] = temp
      end
    end
  end

  array
end

pp bubble_sort([4, 3, 78, 2, 0, 2]) # => [0, 2, 2, 3, 4, 78]
pp bubble_sort([79, 81, 2, 3, 5, 7, 99, 8, 0, 1, 2]) # => [0, 1, 2, 2, 3, 5, 7, 8, 79, 81, 99]
