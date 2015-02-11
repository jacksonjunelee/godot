require 'rspec'

class Luhn

  def valid_credit_card?(num)

    assert_equal valid_credit_card?("1234567890123456"), false
    assert_equal valid_credit_card?("4408041234567893"), true
    assert_equal valid_credit_card?("440804l234567893"), false
    assert_equal valid_credit_card?("38520000023237"), true # diner's club
    assert_equal valid_credit_card?("4222222222222"), true # visa cards have either 13 or 16 digits

  end

end
