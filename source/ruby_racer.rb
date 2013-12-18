require_relative 'racer_utils'

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
  # and you should use the "reputs" helper to print over
  # the previous board
  def print_board
  end
end

players = ['a', 'b']

game = RubyRacer.new(players)

# This clears the screen, so the fun can begin
clear_screen!

until game.finished?
  players.each do |player|
    # This moves the cursor back to the upper-left of the screen
    move_to_home!
  
    # We print the board first so we see the initial, starting board
    game.print_board
    game.advance_player!(player)
    
    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.5)
  end
end

# The game is over, so we need to print the "winning" board
game.print_board

puts "Player '#{game.winner}' has won!"