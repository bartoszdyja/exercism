class Fixnum
  VERSION = 1
  def to_roman
    arabic_arr = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    roman_arr = %w(M CM D CD C XC L XL X IX V IV I)
    number = self
    roman = ''
    i = 0
    while number > 0
      while number >= arabic_arr[i]
        roman << roman_arr[i]
        number -= arabic_arr[i]
      end
      i += 1
    end
    roman
  end
end
