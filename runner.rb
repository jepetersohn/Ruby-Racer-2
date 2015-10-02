require_relative 'die'
require_relative 'ruby_racer'
require_relative 'reset_screen'


players = [:a, :b]
die = Die.new

game = RubyRacer.new(players, die)

# Clear the screen to prepare
# for displaying the board.
reset_screen

until game.finished?
  players.each do |player|
    # We print the board out so we can see what's going on since the last advance
    puts game.board_visualization

    #Then we advance the player
    game.advance_player!(player)

    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.5)
    reset_screen
  end
end

# The game is over, so we need to print the "winning" board
puts game.board_visualization

puts "Player '#{game.winner}' has won!"
