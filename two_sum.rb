
def bad_two_sum?(arr, target)
  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      return true if arr[i] + arr[j] == target
      j+=1
    end
    i+=1
  end
  false
end
#n^2

p bad_two_sum?([1, 4, 3, 2, 6, 5, 7], 11)

def okay_two_sum?(arr, target)
  arr.sort!
  half = target / 2

  return false if half > arr.last

  i = 0
  while arr[i] <= half
    i+=1
  end

  left = arr[0..(i - 1)]
  right = arr[(i - 1)..-1]

  left.each do |lval|
    return true if right.bsearch(target - lval)
  end
  false
end

p okay_two_sum?([1, 4, 3, 2, 6, 5, 7], 13)

# def okay_two_sum?(arr, target)
#   arr.sort!
#   half = target / 2
#
#   i = 0
#   while i < half
#     i+=1
#   end
#
#   while l > 0 && r < arr.length
#     return true if arr[i] + arr[j] == target
#     r+=1
#   end
#   false
# end
# p okay_two_sum?([1, 2, 3, 4, 5, 6, 7, 12], 6)
#
# 11 - 4 = 7
#
#       4
#     2   6
#   1  3 5  7

def hash_two_sum?(arr, target)

  hash = Hash.new(0)
  arr.each { |el| hash[el] += 1 }

  hash.each_key do |key|
    return true if hash.has_key?(target - key)
  end
  false
end

p hash_two_sum?([1, 4, 3, 2, 6, 5, 7], 13)

# def hash_four_sum?(arr, target)
#
#   hash = Hash.new(0)
#   arr.each { |el| hash[el] += 1 }
#
#   hash.each_key do |key|
#     return true if hash_search(hash, target - key)
#   end
#   false
# end
#
# def hash_search(hash, target)
#
# end
#
# p hash_four_sum?([1, 4, 3, 2, 6, 5, 7], 13)

p hash_two_sum?([1, 4, 3, 2, 6, 5, 7], 13)

def hash_four_sum?(arr, target)

  hash = Hash.new(0)
  arr.each { |el| hash[el] += 1 }

  hash.combination(4)

  hash.each_key do |key|

  end
  false
end
