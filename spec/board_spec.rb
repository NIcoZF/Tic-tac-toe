require 'spec_helper'
    
    a1 = BoardCase.new('A1')
    a2 = BoardCase.new('A2')
    a3 = BoardCase.new('A3')
    b1 = BoardCase.new('B1')
    b2 = BoardCase.new('B2')
    b3 = BoardCase.new('B3')
    c1 = BoardCase.new('C1')
    c2 = BoardCase.new('C2')
    c3 = BoardCase.new('C3')

    board_array = [[a1, a2, a3], [b1, b2, b3], [c1, c2, c3]]

describe "Board" do
  context "initialize" do
    it "create a non empty array" do
      expect(board_array).to_not be_nil
    end

    it "create a 3 x 3 array" do
      expect(board_array.flatten.size).to eq(9)
    end
    
    it "populate with default boardcase value" do
      expect(a1.value).to eq(".")
    end
  end

  # context "play turn" do
  #   current_player.symbol = "X"
  #   board = Board.new
  #   it "set the boardcase value to current player's symbol" do
  #     expect(board.play_turn(current_player))
  #   end
  # end
end