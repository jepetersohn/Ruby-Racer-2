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

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
  end

  # Prints the current game board
  # The board should have the same dimensions each time
  # and you should print over the previous board
  def print_board
  end

  # We don't need to test this method.
  def reset_screen
    clear_screen
    move_to_home
  end

  # Clears the content on the screen. Ah, a fresh canvas.
  # We don't need to test this method.
  def clear_screen
    print "\e[2J"
  end

  # Moves the insert point in the terminal back to the upper left.
  # We don't need to test this method.
  def move_to_home
    print "\e[H"
  end
end
