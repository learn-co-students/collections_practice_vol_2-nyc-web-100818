# .all? check through array and evaluates true or false and returns
# all? iteration must return all true for it to be truth, if one is false, then automatially returns false even though TRUE can be greater than false

require 'pry'
def begins_with_r(array)
  array.all? {|word| word[0] == "r"}
end

def contain_a(letter)
  letter.select {|a| a =~ /[a]/} # =~ checks for string in regexp form /[a]/ <- syntax for
end

def first_wa(array)
   array.find {|item| item[0...2] == ("wa")} #.find through item indexed at 0 - 2 only referring to the strings.
end

def remove_non_strings(strings)
  strings.delete_if {|item| !(item.is_a? String)}  #! before (item.is_a?) overwrites into new array.
  #strings.grep(String)  #returns new array.
end

def count_elements(array)
  array.group_by(&:itself)   # group all of the identical elements together
 .map{|k, v| k.merge(count: v.length)} # add the "count" element to the hash
end

def merge_data(data, keys)
#binding.pry
keys[0].values.map.with_index {|string, index| data[index].merge(string)}
#keys[0].values = "blake"
end

def find_cool(cool)
  cool.select {|word| word[:temperature] == "cool"}
#binding.pry
end

def organize_schools(school)
  school.each_with_object({}) do |(school_names, location_hash), result_hash|
  #binding.pry
    (result_hash[location_hash[:location]] ||= []) << school_names
  end
end

#-"Chicago" => ["dev boot camp chicago"],
#-"NYC" => ["flatiron school bk", "flatiron school", "general assembly"],
#-"SF" => ["dev boot camp", "Hack Reactor"],

#(result_hash[location_hash[:location]] ||= []) << school_names
#result_hash<-elements get added in through the loop.
#As it does, [location_hash[:location]] => "NYC", "SF", "Chicago"
# || => compares


#https://apidock.com/rails/Enumerable/each_with_object
#Iterates the given block for each element with an arbitrary object given, and returns the initially given object.

#http://www.rubyinside.com/how-to/ruby-sort-hash --organize school
#organized = school.sort_by {|school, location| location[:location]}
