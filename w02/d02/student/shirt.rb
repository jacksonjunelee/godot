class Shirt

# REDUCES INITIALIZE TEXT----------------------
  # attr_reader :size, :color, :text
  # attr_writer :size, :color, :text

# PROVIDES READER & WRITER---------------------
    attr_accessor :size, :color, :text

# x="(no text)" MAKES THE ARGUMENT OPTIONAL #######
  def initialize(s_size, c_color, t_text="(no text)")
      @size = s_size
      @color = c_color
      @text = t_text
  end

    # def size= (s)
    #   @size = s
    # end

    # def size
    #   @size
    # end

    # def color= (c)
    #   @color = c
    # end

    # def color
    #   @color
    # end

    # def text= (t)
    #   @text = t
    # end
    # def text
    #   @text
    # end

end

pearl_jam_t = Shirt.new("extra-large", "nicely faded black", "'Yield Tour 1998'")
puts pearl_jam_t.size=("medium")
puts "Oh, I love my #{pearl_jam_t.size} sized shirt."
# puts "Jan owns a(n) #{pearl_jam_t.size}, #{pearl_jam_t.color} vintage tee, with #{pearl_jam_t.text} written on the back."

hipster_plaid = Shirt.new("medium", "red plaid", "NO LOGO")
hipster_plaid.color=("orange")
hipster_plaid.text=("'Macaulay Culkin Forever'")
puts "My sweet hister shirt is a size #{hipster_plaid.size}, is #{hipster_plaid.color}, and says #{hipster_plaid.text}."







