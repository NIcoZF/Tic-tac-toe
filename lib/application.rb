
$:.unshift File.expand_path('./../lib', __FILE__)
require 'game'

class Application
  def initialize
    Game.new
  end
end