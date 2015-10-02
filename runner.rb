require_relative 'ruby_racer'

players = ['a', 'b']

game = RubyRacer.new(players)

# This clears the screen, so the fun can begin
game.reset_screen!

until game.finished?
  players.each do |player|
    # We print the board out so we can see what's going on since the last advance
    game.print_board

    #Then we advance the player
    game.advance_player!(player)

    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.5)
    game.reset_screen!
  end
end

# The game is over, so we need to print the "winning" board
game.print_board

puts "Player '#{game.winner}' has won!"
