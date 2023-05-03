class RomanNumerals
  ROMAN_NUMERALS = {
    1000 => "M",
    900 => "CM",
    400 => "CD",
    500 => "D",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    1 => "I"
  }

  #calling class on self
  def self.convert(number)
    roman_numeral = ""
    ROMAN_NUMERALS.each do |k,v|
      #find out how many times we need to print out this particulary value, integer wont give decimal back but only the nearest number
      (number / k).times { roman_numeral << v; number -= k }
    end
    roman_numeral
  end
end