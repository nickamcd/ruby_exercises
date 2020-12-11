def substrings (string, dictionary)
    string_arr = string.split

    string_arr.reduce(Hash.new(0)) do |result, word|
        if dictionary.include?(word)
             result[word] += 1
        end
    result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)