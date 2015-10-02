require_relative 'die.rb'

class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 30)
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
  end

  # Rolls the dice and advances +player+ accordingly
  def advance_player!(player)
  end

  # Prints the current game board
  # The board should have the same dimensions each time
  # and you should print over the previous board
  def print_board
  end


  #Clears the content on the screen. Ah, a fresh canvas.
  #You don't have to test this
  def clear_screen!
    print "\e[2J"
  end

  #Moves the "cursor" back to the upper left.
  #You don't have to test this
  def move_to_home!
    print "\e[H"
  end

  #You don't have to test this
  def reset_screen!
    clear_screen!
    move_to_home!
  end

end
