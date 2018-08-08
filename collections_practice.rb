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

#def count_elements(array)
#end

#def merge_data
#end

# def find_cool
#end

#def organize_schools
#end