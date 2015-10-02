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
end
