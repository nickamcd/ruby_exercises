class CaesarCipher
  UPPERCASE_LETTERS = ('A'..'Z').freeze
  LOWERCASE_LETTERS = ('a'..'z').freeze

  def caesar_cipher(string, shift)
    caesar_string = ''

    string.each_char do |c|
      caesar_string += if LOWERCASE_LETTERS.include?(c)
                         caesar_shift(c, shift, 97)
                       elsif UPPERCASE_LETTERS.include?(c)
                         caesar_shift(c, shift, 65)
                       else
                         c
                       end
    end

    caesar_string
  end

  def caesar_shift(char, shift, baseval)
    ((((char.ord - baseval) + shift) % 26) + baseval).chr
  end
end
