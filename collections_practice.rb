def begins_with_r(array)
  arr = []
  array.each do |word|
    arr << word if word[0] == 'r'
  end 
  arr.length == array.length
end 

def contain_a(array)
  array.keep_if do |word|
    word.include?('a')
  end 
  array
end 

def first_wa(array)
  array.each do |word|
    return word if word[0..1] == 'wa'
  end 
end 

def remove_non_strings(array)
  array.keep_if { |ele| ele.is_a?(String) }
  array
end 

def count_elements(array)
  new_arr = []
  vals = []
  array.each { |ele| vals << ele.values }
  vals = vals.flatten
  (vals.uniq).each do |name|
    obj = {}
    obj[:count] = vals.count(name)
    obj[:name] = name
    new_arr << obj
  end 
  new_arr
end

def merge_data(key, data)
  merge = []
  key.each do |name|
    data.each do |ele|
      merge << name.merge(ele[(name.values).first])
    end
  end
  merge
end 


def find_cool(cool)
  cool.keep_if do |ele|
    ele if ele.has_value?('cool') 
  end 
  cool
end 


def organize_schools(school)
  school_obj = {}
  school.each do |key, val|
    if school_obj.has_key?(val[:location])
      school_obj[val[:location]] << key
    else 
      school_obj[val[:location]] = [key]
    end 
  end
  school_obj
end 

