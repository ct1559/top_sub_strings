def substrings(string, dictionary)
    dict_count = Hash.new(0)
    str_arr = string.split("")
  
    dictionary.each do |word|
      end_index = word.length-1
      str_arr.each_with_index do |char, index| 
        break unless end_index < str_arr.length
        if str_arr[index..end_index].join("").downcase == word
          dict_count[word] += 1
        end
        end_index += 1
      end
    end
    dict_count
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  puts substrings("Howdy partner, sit down! How's it going?", dictionary)