# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'board'
require 'player'
require 'show'

class Game
  attr_accessor :current_player, :status, :board, :players_array

  def initialize
    @player1 = Player.new('joueur 1')
    @player2 = Player.new('joueur2')
    @board = Board.new
    @current_player = @player1
    @players_array = [@player1, @player2]
    @status = 'on going'
    @turns_counter = 0
  end

  def turn
    while @status == 'on going'

      Show.new.show_board(@board)
      @board.play_turn(@current_player)

      if @board.victory?(@current_player, @status)
        @status = @current_player
        puts ""
        Show.new.show_board(@board)
      end

      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end

      @turns_counter += 1
        if @count_turns == 9 && @status == "on going" # pour le match nul il faut que le status soit à en cours
          @status = "nul" # si match nul
          puts "Match nul\n"
          Show.new.show_board(@board)
        end

    end

    new_round

  end

  def new_round
    puts "Tu veux rejouer ? Y or N"
    print ">> "
    answer = gets.chomp.upcase
    if answer == "Y"
      @board = Board.new
      @status = "on going"
      @count_turns = 0
      turn
    else
      game_end
    end
  end

  def game_end
    puts 'Fin du jeu, see ya !'
  end
end
