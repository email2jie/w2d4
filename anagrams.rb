
def anagram?(str1, str2)
  str_arr = str1.split("")
  anagrams = str_arr.permutation(5).to_a

  anagrams.map! {|el| el.join("")}
  anagrams.include?(str2)

end


p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true

def anagram2?(str1, str2)
  str_arr1 = str1.split(//)
  str_arr2 = str2.split(//)


  until str_arr1.empty?
    found = str_arr2.index(str_arr1[0])
    unless found.nil?
      str_arr2.delete_at(found)
    end
    str_arr1.delete_at(0)
  end

  str_arr1.empty? && str_arr2.empty?
end

p anagram2?("gizmo", "sally")    #=> false
p anagram2?("elvis", "lives")    #=> true

def anagram3?(str1, str2)
  str_arr1 = str1.split(//)
  str_arr2 = str2.split(//)
  str1 = str_arr1.sort.join
  str2 = str_arr2.sort.join
  str1 == str2
end

p anagram3?("gizmo", "sally")    #=> false
p anagram3?("elvis", "lives")    #=> true

def anagram4?(str1, str2)
  hash = Hash.new(0)
  str1.each_char { |char| hash[char] += 1 }
  str2.each_char { |char| hash[char] += 1 }

  hash.values.all? { |value| value.even? }
end

p anagram4?("gizmo", "sally")    #=> false
p anagram4?("elvis", "lives")    #=> true
