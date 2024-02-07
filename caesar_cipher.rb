def caesar_cipher (string, shift_factor)
    coded_string = string.codepoints
    ciphered_codes = coded_string.map do |char|

      if char.between?(65, 90) #Codepoints for uppercase letters
        char + shift_factor >= 91 ? char = char + shift_factor - 26 : char + shift_factor

      elsif char.between?(97, 122) #Codepoints for lowercase letters
        char + shift_factor >= 123 ? char = char + shift_factor - 26 : char + shift_factor

      else
        char = char
      end
    end
    ciphered_string = ciphered_codes.map { |char| char.chr }
    ciphered_string.join("")
end

puts caesar_cipher("What a string!", 5)