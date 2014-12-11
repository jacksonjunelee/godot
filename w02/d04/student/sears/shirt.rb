class Shirt < Product

  def initialize(p, b, s, c, t)
    super(19.99, b)
    @color = c
    @size = s
    @text = t
  end

end
