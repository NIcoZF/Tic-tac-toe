# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'board_case'

class Board
  attr_accessor :board_array

  # combination = [[A1,A2,A3], [B1,B2,B3], [C1,C2,C3], [A1,B1,C1], [A2,B2,C2], [A3,B3,C3], [A1,B2,C3], [A3, B2,C1]]

  def initialize
    @a1 = BoardCase.new('A1')
    @a2 = BoardCase.new('A2')
    @a3 = BoardCase.new('A3')
    @b1 = BoardCase.new('B1')
    @b2 = BoardCase.new('B2')
    @b3 = BoardCase.new('B3')
    @c1 = BoardCase.new('C1')
    @c2 = BoardCase.new('C2')
    @c3 = BoardCase.new('C3')

    @board_array = [[@a1, @a2, @a3], [@b1, @b2, @b3], [@c1, @c2, @c3]]

    print @board_array.inspect
  end

  def play_turn
    puts 'A ton tour !'
    puts 'Quelle case veux tu jouer ?'
    choice = gets.chomp.to_s
    @board_array = @player.symbol
  end
end
