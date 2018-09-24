# your code goes here
require 'pry'

# Return true if every element of the tools array starts with an "r" and false otherwise.
# should return false if there's an element that does not begin with r
def begins_with_r(array)
  array.all? {|string| string[0] == "r"}
end


# return all elements that contain the letter 'a'
def contain_a(array)
  array.map do |string| # each element of the array is a string
    if string.include?("a")
      string
    end
  end.compact # gets rid of nils
end

# Return the first element that begins with the letters 'wa'
def first_wa(array)
  #use .find
  array.find {|string| string[0, 2] == "wa"}
end

# remove anything that's not a string from an array
def remove_non_strings(array)
  array.keep_if {|element| element.is_a?(String)}
end

# def remove_non_strings(array)
#   array.map do |element|
#     if element.is_a?(String)
#       element
#     else
#       array.delete(element)
#     end
#   end
# end

# count how many times something appears in an array
# array_of_hashes =  [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]
# name_hash = {:name=>"blake"}
# name =  :name
# string =  "blake"

# want: [{:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}]

def count_elements(array_of_hashes)

  array_of_hashes.each do |name_hash| # looping over array_of_hashes
    name_hash[:count] = 0 # adding a key/val pair to name_hash vs. creating a new hash
    name = name_hash[:name] # set local variable so name = "blake" so then we can compare this variable in the next loop

    # just checking something
    array_of_hashes.each do |hash| # updating each hash within array
      if hash[:name] == name
        name_hash[:count] += 1
      end
    end
  end
  array_of_hashes.uniq # removes duplicates
end

#  combines two nested data structures into one
# the value of of the hash in array_of_hashes matches the keys of the hash in data_array
# hard coded:

def merge_data(arr1, arr2)
  merged = []

  arr1.each_index do |i|

    arr2[0].keys.each do |name|

      merged << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
    end
  end
  merged
end

# find all cool hashes
def find_cool(array_of_2hashes)
  array_of_cool = []

  array_of_2hashes.each do |hash|

    hash.each do |k, v|
      if hash[k] == "cool"
        array_of_cool << hash
      end
    end
  end

  array_of_cool
end


# organizes the schools by location
def organize_schools(schools_hash)
  new_hash = {}

  schools_hash.map do |school, location_hash|

    location_hash.map do |location_key, city|
      if new_hash.keys.include?(city)
        new_hash[city] << school
      else
        new_hash[city] = [school]
      end
    end
  end
  new_hash
end
