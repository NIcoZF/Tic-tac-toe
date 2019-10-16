
$:.unshift File.expand_path('./../lib', __FILE__)
require 'game'
require 'board'

class Application
  def perform
    @game = Game.new
    @game.turn
  end
end