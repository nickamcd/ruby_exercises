def substrings (string, dictionary)
    string_arr = string.split

    string_arr.reduce(Hash.new(0)) do |result, word|
        dictionary.each do |reference_word|
            if word.downcase.include?(reference_word)
                result[reference_word] += 1
            end
        end
    result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)