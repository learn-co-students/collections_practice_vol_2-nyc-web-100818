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
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

# [{:first_name=>"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},},
#    {:first_name=>"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(cool)
cool.each do |x|
  x.each do |y,z|
if z == "cool"
  return [x]
  end
end
end
end

def organize_schools(schools)
  nyc = []
  sf = []
  chicago = []
schools.each do |x,y|
  y.each do |a,z|
    if z == "Chicago"
      chicago << x
    elsif z == "NYC"
      nyc << x
    elsif z == "SF"
      sf << x
    end
  end
end
{"NYC" => nyc, "SF" => sf, "Chicago" => chicago}

end

# let(:organized_schools) {
#   {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#    "SF"=>["dev boot camp", "Hack Reactor"],
#    "Chicago"=>["dev boot camp chicago"]}
# }
