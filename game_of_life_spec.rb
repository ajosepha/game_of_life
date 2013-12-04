require 'rspec'
require './game_of_life.rb'


describe "game of life" do
    let(:world) {World.new}
    context "cell utility methods" do
        subject { Cell.new(world) }
        it "spawn relative to" do
            cell = subject.spawn_at(3,5)
            cell.is_a?(Cell).should be_true
            cell.x.should == 3
            cell.y.should == 5
            cell.world.should == subject.world
        end
    end

    it "detects a neigbor to the north" do
        cell = subject.spawn_at(0, 1)
       subject.neighbors.count.should == 1
    end
	
    it "rule 1: any live cell with fewer than two live neigbors dies" do
    cell = Cell.new
    cell.neighbors.count.should == 0
    end
end

# describe "World" do
#     it "can make a board" do
#         my_board = World.new(2)
#         expect(my_board).to_not be(nil)
#     end
    # it "creates an array with with a cell in each slot" do
    #     my_world = World.new(3)
    #     my_world.new_board.should == [[ , , ],[ , , ,],[ , , ]]
    # end
#end 

#simple tests
#