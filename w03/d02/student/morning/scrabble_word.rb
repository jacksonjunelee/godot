class ScrabbleWord
  @@score_table = {:a => 1, :b => 3,  :c => 3, :d => 2, :e => 1,
  :f => 4, :g => 2,  :h => 4, :i => 1, :j => 8,
  :k => 5, :l => 1,  :m => 3, :n => 1, :o => 1,
  :p => 3, :q => 10, :r => 1, :s => 1, :t => 1,
  :u => 1, :v => 4,  :w => 4, :x => 8, :y => 4,
  :z => 10}

  def initialize(letter)
    @letter = letter.downcase.split('').map! {|letter| letter.to_sym}
  end

  def score
    score = 0
    @score = @letter.each {|letter| score += @@score_table[letter]}
    score
  end

  def multiplier_score(times_score)
    @multiplier_score = score * 2
    multiplier_score
  end
end
