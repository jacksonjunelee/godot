require 'rspec'

class Luhn

  # def valid?(num)
  #   num.split("").
  #   if num % 10 == 0
  #     return true
  #   else
  #     return false
  #   end

  def valid?(credit_card)
    (*digits, checksum_digit) = s.split('').map(&:to_i)
  result = 0
  digits.reverse.each_with_index do |item, index|
      if index.even?
        if item.to_i*2>9
          result += item.to_i*2-9
        else
          result += item.to_i*2
        end
      else
        result +=item.to_i
      end
    end

    if (result % 10) == 0
      self.validation = "valid"
    else
      self.validation = "invalid"
    end
  end

end
