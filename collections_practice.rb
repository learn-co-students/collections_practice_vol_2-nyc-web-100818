# Return true if every element of the tools array starts with an "r"
#  and false otherwise.
def begins_with_r (array)
  array.all? do |string| string[0] =="r"
  end
end

# return all elements that contain the letter 'a'
def contain_a (array)
  array.collect do |string|
    if string.include?("a")
      string
    end
  end.compact
end

# remove anything that's not a string from an array
def remove_non_strings (array)
  array.keep_if do |element| element.is_a?(String)
  end
end

# organizes the schools by location
def organize_schools (schools)
  schools_new={}
  schools.each do |name,location_hash|
    location = location_hash[:location]
    if schools_new[location]
      schools_new[location] << name
    else
      schools_new[location] =[]
      schools_new[location] << name
    end
  end
  schools_new
end

#  Return the first element that begins with the letters 'wa'
def first_wa (array)
  array.find do |string| string[0..1] == "wa"
  end
end

#  find all cool hashes
def find_cool (array)
  cool_array = []
  array.each do |hash|
    hash.each do |key,value|
      if hash[key] == "cool"
        cool_array << hash
      end
    end
  end
  cool_array
end

# count how many times something appears in an array
def count_elements (array)
  array.each do |original_hash|
    original_hash[:count]=0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

# combines two nested data structures into one
def merge_data (array_1,array_2)
  merged_array=[]

  array_1.each do |person_name|
    name=person_name[:first_name]
    array_2.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        merged_array << merged_person
      end
    end
  end
  merged_array
end
