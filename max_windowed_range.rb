require_relative 'min_max_stackqueue'
require 'benchmark'
require 'byebug'

def max_windowed_range(arr, window)
  max = 0
  arr.each_cons(window) do |con|
    max = [max, con.max - con.min].max
  end
  max
end
#O{n * m)

p max_windowed_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p max_windowed_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p max_windowed_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p max_windowed_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

def windowed_max_range(arr, window_size)
  mmsq = MinMaxStackQueue.new

  current_max_range = 0
  window_size.times do |i|
    mmsq.enqueue arr[i]
  end

  max_range_diff = mmsq.max - mmsq.min
  while window_size < arr.length
    mmsq.enqueue(arr[window_size])
    mmsq.dequeue
    
    current_max_range = mmsq.max - mmsq.min
    max_range_diff = current_max_range if current_max_range > max_range_diff
    window_size += 1
  end
  max_range_diff
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
