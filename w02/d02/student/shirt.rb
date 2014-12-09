class Shirt

  def initialize (s_size, c_color, t_text)
      @size = s_size
      @color = c_color
      @text = t_text
  end

    def size= (s)
      @size = s
    end

    def size
      @size
    end

    def color= (c)
      @color = c
    end

    def color
      @color
    end

    def text= (t)
      @text = t
    end
    def text
      @text
    end

end

pearl_jam_t = Shirt.new("extra-large", "nicely faded black", "'Yield Tour 1998'")
puts "Jan owns a(n) #{pearl_jam_t.size}, #{pearl_jam_t.color} vintage tee, with #{pearl_jam_t.text} written on the back."









