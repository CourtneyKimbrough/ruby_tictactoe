require_relative 'board'
require_relative 'player'

class Game
  def initialize
    puts "Welcome to tic-tac-toe!\nPlayer 1 enter your name:"
    @player1 = Player.new("X", gets.chomp)
    puts "Thanks #{@player1.name}! You will be X. Player 2 please enter your name:"
    @player2 = Player.new("O", gets.chomp)
    puts "Thanks #{@player2.name}! You will be O."

    @board = Board.new
    @players = [@player1, @player2]
    @player_index = 0
    
  end

  def play
    loop do
      current_player = @players[@player_index]
      puts "#{current_player.name} chose a spot."
      spot = gets.chomp
      @board.update_grid(spot, current_player.symbol)
      @board.display
    end
  
  end

  def switch_players
    @player_index = 1 - @player_index
  end

end

mygame = Game.new
mygame.play
