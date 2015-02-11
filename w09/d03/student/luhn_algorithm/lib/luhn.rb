require 'rspec'

class Luhn

  def self.valid?(account_number)
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
        result += item.to_i
      end
    end

    if (result % 10) == 0
      self.validation = "valid"
    else
      self.validation = "invalid"
    end
  #   binding.pry
    # digits = account_number.scan(/./).map(&:to_i)
    # check = digits.pop

    # sum = digits.reverse.each_slice(2).map do |x, y|
    #   [(x * 2).divmod(10), y || 0]
    # end.flatten.inject(:+)

    # (10 - sum % 10) == check

  end

end
