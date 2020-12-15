# frozen_string_literal: true

def substrings(string, dictionary)
  string_arr = string.split

  string_arr.each_with_object(Hash.new(0)) do |word, result|
    dictionary.each do |reference_word|
      result[reference_word] += 1 if word.downcase.include?(reference_word)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
