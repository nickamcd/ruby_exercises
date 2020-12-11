UPPERCASE_LETTERS = ("A".."Z")
LOWERCASE_LETTERS = ("a".."z")

def caesar_cipher(string, shift)
    caesar_string = ""

    string.each_char do |c|
        if LOWERCASE_LETTERS.include?(c)
            caesar_string += caesar_shift(c, shift, 97)
        elsif UPPERCASE_LETTERS.include?(c)
            caesar_string += caesar_shift(c, shift, 65)
        else
            caesar_string += c
        end
    end

    return caesar_string
end

def caesar_shift(char, shift, baseval)
    ((((char.ord - baseval) + shift) % 26) + baseval).chr
end

p caesar_cipher("What a string!", 5)