# your code goes here
require 'pry'

def begins_with_r strings
    strings.all? do |string|
        string.start_with?("r")
    end
end

def contain_a strings
    strings.select do |string|
        string.include?("a")
    end
end

def first_wa strings_and_symbols
    strings_and_symbols.find do |string_or_symbol|
        string_or_symbol.to_s.start_with?("wa")
    end
end

def remove_non_strings varying_data_types
    varying_data_types.select do |data|
        data.is_a? String
    end
end

def count_elements hashes
    array_with_counts = hashes.reduce([]) do |array_with_counts, name_hash|
        existing_count_hash = array_with_counts.find do |hash_with_count| 
            hash_with_count[:name] == name_hash[:name]
        end
            
        if existing_count_hash
            existing_count_hash[:count] += 1
        else
            new_count_hash = {
                name: name_hash[:name],
                count: 1
            }
            array_with_counts << new_count_hash        
        end
        array_with_counts
    end  
end

def merge_data first_array, second_array
    output = []
    first_array.each_with_index do |element, index|
        combined_hash = {}
        first_array[index].each do |key, value|
            combined_hash[key] = value
        end
        second_array[index].each do |key, value|
            combined_hash[key] = value
        end
        output << combined_hash
        # binding.pry
    end 
    output
end

def find_cool hashes
    hashes.select {|hash| hash[:temperature] == "cool"}
end

def organize_campuses campuses
    campuses_by_location = {}
    campuses.each do |school, location|
        current_location = location[:location]
        if campuses_by_location[current_location]
            campuses_by_location[current_location] << school
        else
            campuses_by_location[current_location] = [school]
        end
    end
    campuses_by_location
end


