def begins_with_r(array)
  arr = []
  array.each do |x|
    arr.push(x) if x[0].downcase == ("r" || "R")
  end
  arr == array
end

def contain_a(array)
  output = []
  array.each do |x|
    output.push(x) if x.include?("a" || "A")
  end
  output
end

def first_wa(array)
  array.find {|x| x.class == String && x.include?("wa")}
end

def remove_non_strings(array)
  output = []
  array.each do |x|
    output.push(x) if x.class == String
  end
  output
end

def count_elements(array)
  output = []
  count = 0
  name = ""
  array.each do |x|
    if x[:name] != name
      output << {count: count, name: name} if name!= ""
      name = x[:name]
      count = 0
    end
    count += 1
    output << {count: count, name: name} if array.last == x
  end
  output
end

def merge_data(array1,array2)
  output = []
  name = ""
  data = {}
  array1.each do |x|
    name = x[:first_name]
    array2.each { |y| x.merge!(y[name]) }
    output << x
  end
end

def find_cool(array)
  output = []
  array.each do |name|
    output << name if name[:temperature] == "cool"
  end
  output
end

def organize_schools(array)
  output = {}
  array.each do |k,v|
    location = v[:location]
    output[location] = [] if output[location] == nil
    output[location] << k
  end
  output
end
