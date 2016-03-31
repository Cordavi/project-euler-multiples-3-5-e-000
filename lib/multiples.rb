# Enter your procedural solution here!
def collect_multiples(maximum)
    numbers = Array.new
    for i in  0..(maximum - 1)
       if i > 0 && ((i % 3 == 0) || (i % 5 == 0))
        numbers << i
       end 
    end
    return numbers
  end

  def sum_multiples(maximum)
    multiples = collect_multiples(maximum)
    multiples.inject(0, :+)
  end

class Multiples

  def initialize(limit)
    @limit = limit
  end 

  def collect_multiples
    Object.send(:collect_multiples,@limit)
  end

  def sum_multiples 
    Object.send(:sum_multiples, @limit)
  end  
end



