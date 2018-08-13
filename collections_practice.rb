def begins_with_r(arr)
  output = true
  arr.each do | element |
    result = element.start_with? 'r' 
      if result == false 
        return false 
      end 
  end
  output
end

def contain_a(array)
  array.select {|element| element.include? 'a'}
end

def first_wa(words)
  words.find { |word| word.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.select {|element| element.is_a? String }
end

def count_elements(array)
   new_hash = array.each do |element|
    element[:count] = array.count(element)
  end
   new_hash.delete_at(1)
   new_hash
 end

def merge_data(data_1, data_2)
  merged = []
   data_1.each do |item|
     item.each do |k, name|
      merged << item.merge(data_2[0][name])
    end
  end
  merged.flatten
end

 
   def find_cool(array)
  array.select do |item|
    item.values.include?('cool')
  end
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end