class Tenant

  attr_reader :f_name, :l_name, :born_on, :gender, :n_name

  def initialize (f, l, b, g)
    @f_name  = f
    @l_name  = l
    @born_on = b
    @gender  = g
  end

  def nickname= (n)
    @nickname = n
  end

  def nickname
    @nickname
  end

  def occupation= (o)
    @occupation = o
  end

  def occupation
    @occupation
  end


end

tenant_1 = Tenant.new("James", "Everett", "December 13, 1945", "male")
tenant_1.nickname=("Jimmy")
tenant_1.occupation=("Bishop")

puts "#{tenant_1.f_name} #{tenant_1.l_name} was born on #{tenant_1.born_on} and is #{tenant_1.gender}. People call him #{tenant_1.nickname} and he is a full-time #{tenant_1.occupation}."

full_name = ["#{tenant_1.f_name} '#{tenant_1.nickname}' #{tenant_1.l_name}"]
puts full_name

