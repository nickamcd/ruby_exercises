require "./lib/caesar_cipher.rb"

describe CaesarCipher do
  subject { CaesarCipher.new }

  describe "#caesar_cipher" do
    it "works with a positive shift" do
      expect(subject.caesar_cipher("apple", 4)).to eql("ettpi")
    end

    it "works with a negative shift" do
      expect(subject.caesar_cipher("orange", -4)).to eql("knwjca")
    end

    it "works with capital letters" do
      expect(subject.caesar_cipher("Hello JJ Abrams", 6)).to eql("Nkrru PP Ghxgsy")
    end

    it "ignores punctuation" do
      expect(subject.caesar_cipher("Hello, world!", 9)).to eql("Qnuux, fxaum!")
    end
  end
end