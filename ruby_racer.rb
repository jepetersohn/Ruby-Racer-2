
class RubyRacer
  attr_reader :players, :die, :length
  attr_accessor :player_position

  def initialize(players, die, length = 30)
    @players = players
    @die = die
    @length = length
    @player_position = {@players[0] => 0, @players[1] => 0}
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    # binding.pry
    if @player_position[@players[0]] >= 30 || @player_position[@players[1]] >= 30
      true
    end
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    @player_position.key(30)
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    @player_position[player] += die.roll
    if @player_position[player] > @length
      @player_position[player] = @length
    end
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
   # binding.pry
    string = Array.new(30, " ").insert(@player_position[players[0]], @players[0]).join("|")
    string << "\n"
    string << Array.new(30, " ").insert(@player_position[players[1]], @players[1]).join("|")
  end
end
