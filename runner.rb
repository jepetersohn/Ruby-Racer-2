require_relative 'ruby_racer'

# The following methods will help us
# to update the screen when printing the board.
# We don't need to test these methods.
def reset_screen
clear_screen
move_to_home
end

# Clears the content on the screen. Ah, a fresh canvas.
def clear_screen
print "\e[2J"
end

# Moves the insert point in the terminal back to the upper left.
def move_to_home
print "\e[H"
end


# Playing the game ...
players = [:a, :b]

game = RubyRacer.new(players)

# Clear the screen to prepare
# for displaying the board.
reset_screen

until game.finished?
  players.each do |player|
    # We print the board out so we can see what's going on since the last advance
    game.print_board

    #Then we advance the player
    game.advance_player!(player)

    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.5)
    reset_screen
  end
end

# The game is over, so we need to print the "winning" board
game.print_board

puts "Player '#{game.winner}' has won!"
