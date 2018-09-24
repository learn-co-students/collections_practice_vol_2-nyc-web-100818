def begins_with_r (array) 
  array.all? do |word| 
    word[0] == "r"
  end 
end 

def contain_a(array) 
  array.select do |word| 
    word.include?("a") 
  end 
end 

def first_wa(array) 
  array.detect do |word| 
    word[0,2] == "wa" 
  end 
end 

def remove_non_strings(array) 
  array.delete_if do |word| 
    word.is_a?(String) == false 
  end 
end 

def count_elements(array)
  array.uniq.each {|i| count = 0 
  array.each {|i2| if i2 == i then count += 1 end} 
  i[:count] = count} 
end 
 

def merge_data(keys, data) 
  newArray = [] 
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then newArray << i.merge(v) end}} 
  newArray 
end 
 
def find_cool(array)
  cool_hashes = [] 
  array.each do |hash| 
    hash.each {|k,v| cool_hashes << hash if k == :temperature && v=="cool"}
  end
  cool_hashes
end 

def organize_schools(hash)
  locations = {} 
  hash.values.each {|location| locations[location.values[0]] = [] } 
  hash.each {|school, location| locations[location.values[0]] << school } 
  locations 
end 

