
def subset_sum(set)
  subsets = []
  i = 0
  while i < set.length
    j = i
    while j < set.length
      subsets << set[i..j].inject(:+)
      j+=1
    end
    i+=1
  end
  subsets.max
end



def subset_sum(set)
  largest_sum = 0
  curr_sum = 0
  i = 0
  while i < set.length
    curr_sum = [0, curr_sum + set[i]].max
    largest_sum = [curr_sum, largest_sum].max
    i+=1
  end
  largest_sum
end

p subset_sum([2, -3, -6, 7, -6, 7])
