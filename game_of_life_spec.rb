require 'rspec'
require './game_of_life.rb'


describe "game of life" do
	it "rule 1: any live cell with fewer than three live neigbors dies" do
    cell = Cell.new
    cell.neighbors.count.should == 0
    end
end

describe "Board" do
    it "can make a board" do
    board = Board.new
    expect(board).to_not be(nil)
    end

end