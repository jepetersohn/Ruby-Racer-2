class Die
  def initialize(sides = 6)
    @sides = sides
  end

  # Remember: rand(N) randomly returns one of N consecutive integers, starting at 0
  # So rand(N) returns a random integer in (0..N-1)
  # And 1 + rand(N) returns a random integer in (1..N)
  # See: http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-rand
  def roll
    1 + rand(@sides)
  end
end
