class Cipher
  # we don't need this because we're not calling .new
  # def initialize
  # end

  # copied & pasted each array of the alphabet into "TRANSLATION"

  TRANSLATION = {
  "a" => "n",
  "b" => "o",
  "c" => "p",
  "d" => "q",
  "e" => "r",
  "f" => "s",
  "g" => "t",
  "h" => "u",
  "i" => "v",
  "j" => "w",
  "k" => "x",
  "l" => "y",
  "m" => "z",
  "n" => "a",
  "o" => "b",
  "p" => "c",
  "q" => "d",
  "r" => "e",
  "s" => "f",
  "t" => "g",
  "u" => "h",
  "v" => "i",
  "w" => "j",
  "x" => "k",
  "y" => "l",
  "z" => "m"
}

  def self.encode(word)
    word.split('').map { |letter| TRANSLATION[letter] }.join
  end
end

$stdout.puts(Cipher.encode("hi"))
