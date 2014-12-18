class Person

attr_accessor :name, :age, :memories, :remember, :interests

    def alive?
    @alive = true
    end

    def initialize
      @name
      @age = 0
      @alive = true
      @interests
    end

    def age!
      @age += 1
    end

    def brain
      @brain = {:memories => [], :loved_ones => "loved ones", :interests => "interests"}
    end

    def memories
      if age >= 3
        brain[:memories]
      else
        nil
      end
    end
# -----------------THIS LINE KEEPS FAILING AND PREVENTS ME FROM BREING GREAT!!!------------------
    def remember(memories)
      @brain[:memories].push(:memory)
    end

    def first_memory(age, memories)
      while age >= 3
      puts :age, :memory
      end
    end

    def get_interested_in(interests)
      if @interests
    end



end

