# frozen_string_literal: true

class Player
  attr_reader :name, :symbol

  def initialize(player)
    puts " #{player}     Quel est ton nom senseï ?"
    print ' > '
    @name = gets.chomp.to_s
    puts '      Quel symbol veux-tu ?'
    print ' > '
    @symbol = gets.chomp.to_s # X or 0
  end
end