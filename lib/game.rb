# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'board'
require 'player'

class Game
  def initialize
    @player1 = Player.new("joueur 1")
    @player2 = Player.new("joueur2")
    @board = Board.new
    @current_player = @player1
    @players_array = [@player1,@player2]
    
  end
end
