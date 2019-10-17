require 'spec_helper'

describe 'board_case' do
  context "initialize" do
    a1 = BoardCase.new("A1")
      it "is initialized with a value of '.' by default" do
        expect(a1.value).to eq "."
      end

      it "is initialized with a valid id" do
        expect(a1.id).to eq "A1"
      end
  end
end