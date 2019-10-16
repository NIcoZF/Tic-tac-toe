# frozen_string_literal: true

require 'bundler'
Bundler.require

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'application'
require 'board'
# puts '      -------------------------------------------------'
# puts "      |Bienvenue sur Tic tac Toe !      |"
# puts "      |Laisse toi guider!|"
# puts '      -------------------------------------------------'

# # initialisatio du jeu

# puts '      Quel est ton nom senseï (joueur 1)'
# print ' > '
# player1 = gets.chomp.to_s
# @player1 = Player.new(player1)
# puts '      Quel est ton nom senseï (joueur 2)'
# print ' > '
# player2 = gets.chomp.to_s
# @player2 = Player.new(player2)

# puts "#{@player1.name}"
# puts "#{@player2.name}"

# puts "    |   |     "
# puts "-"*15
# puts "    |   |     "
# puts "-"*15
# puts "    |   |     "

Application.new
binding.pry
