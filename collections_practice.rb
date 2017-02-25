# your code goes here
def begins_with_r(array)
  return_value = true
array.each do |word|
  if (!word.start_with?("r"))
    return_value = false
  end
end
  return_value
end

def contain_a(array)
 array.collect do |word|
   word.include?("a") ? word : nil
end.compact
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
array.select do |element|
  element.is_a? (String)
end
end

def count_elements(array)
  array.each do |obj|
    obj[:count] = 0
    name = obj[:name]
    array.each do |obj2|
      if(obj2[:name] == name)
        obj[:count] +=1
      end
    end
    end.uniq
  end


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

  def organize_schools(schools)
   schools_organized = {}
   schools.each do |school_key_name, location_obj|
     city = location_obj[:location]
     if (!schools_organized[city])
       schools_organized[city] = [school_key_name]
     else 
       schools_organized[city].push(school_key_name)
     end
   end
   schools_organized
  end

  def find_cool(cool)
  cool.collect do |obj|
    if (obj[:temperature].downcase== "cool")
      obj
    end
  end.compact
end