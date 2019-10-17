require 'spec_helper'

describe "Player" do
  context "initialize" do
    player = Player.new("joueur1")
    
    it "Player instance has a name" do
      expect(player.name).to_not be nil
    end
    it "Player instace has a symbol" do
      expect(player.symbol).to_not be nil
    end
  end
end