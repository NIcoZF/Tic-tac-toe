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

    @available_array = %w[A1 A2 A3 B1 B2 B3 C1 C2 C3]
  end

  def play_turn(current_player)
    puts "\nA ton tour #{current_player.name}"
    puts 'Quelle case veux tu jouer ?'
    print '>> '
    choice = gets.chomp.upcase

    until @available_array.include?(choice)
      puts 'Tu dois choisir une case disponible !'
      print '>> '
      choice = gets.chomp.upcase
    end

    case choice
    when 'A1'
      @a1.value = current_player.symbol
      @available_array.delete('A1')
    when  'A2'
      @a2.value = current_player.symbol
      @available_array.delete('A2')
    when  'A3'
      @a3.value = current_player.symbol
      @available_array.delete('A3')
    when  'B1'
      @b1.value = current_player.symbol
      @available_array.delete('B1')
    when  'B2'
      @b2.value = current_player.symbol
      @available_array.delete('B2')
    when  'B3'
      @b3.value = current_player.symbol
      @available_array.delete('B3')
    when  'C1'
      @c1.value = current_player.symbol
      @available_array.delete('C1')
    when  'C2'
      @c2.value = current_player.symbol
      @available_array.delete('C2')
    when  'C3'
      @c3.value = current_player.symbol
      @available_array.delete('C3')
    end
  end

  def victory?(current_player)
    if (@a1.value == @a2.value) && (@a2.value == @a3.value) && (@a1.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    elsif (@b1.value == @b2.value) && (@b2.value == @b3.value) && (@b1.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    elsif (@c1.value == @c2.value) && (@c2.value == @c3.value) && (@c1.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    elsif (@a1.value == @b1.value) && (@b1.value == @c1.value) && (@a1.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    elsif (@a2.value == @b2.value) && (@b2.value == @c2.value) && (@a2.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    elsif (@a3.value == @b3.value) && (@b3.value == @c3.value) && (@a3.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    elsif (@a1.value == @b2.value) && (@b2.value == @c3.value) && (@a1.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    elsif (@a3.value == @b2.value) && (@b2.value == @c1.value) && (@a3.value != '.')
      puts "#{current_player.name} a gagné !\n"
      true
    end
  end
end
