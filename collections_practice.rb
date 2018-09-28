require 'pry'
def begins_with_r(array)
array.each do |x|
  split = x.split("")
  if split[0] != "r"
    return false
  end
end
return true
end

def contain_a(array)
  array.select {|x|
sorted = x.split("").sort
sorted[0] == "a"
}
end
def first_wa(array)
array.find{|word|
word = word.to_s.split("")
[word[0],word[1]] == ["w","a"]
}
end

def remove_non_strings(array)
array.delete_if{|word|
  word != word.to_s
}
end

def count_elements(array)
array.each do |original_hash|
    binding.pry
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end
