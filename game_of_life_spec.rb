require 'rspec'
require './cell'
require './world'


describe "game of life" do

    let(:world) {World.new}
    context "cell utility methods" do
        subject { Cell.new(world) }
        it "spawn relative to" do
            cell = subject.spawn_at(3,5)
            cell.is_a?(Cell).should be_true
            #checks the position
            cell.x.should == 3
            cell.y.should == 5
            cell.world.should == subject.world
        end

    it "detects a neigbor to the north" do
    cell = subject.spawn_at(0, 1)
    subject.neighbors.count.should == 1
        end


    it "detects a neighbor to the northeast" do
        cell = subject.spawn_at(1, 1)
        subject.neighbors.count.should == 1
    end

    it "detects a neighbor to the west" do
        cell = subject.spawn_at(-1, 0)
        subject.neighbors.count.should == 1
    end

    it "dies" do
        subject.die!
        subject.world.cells.should_not include(subject)
    end
end

   
    
	
    it "rule 1: any live cell with fewer than two live neigbors dies" do
        cell = Cell.new(world)
        new_cell = cell.spawn_at(2,0)
        cell.neighbors.count.should == 0
        world.tick!
        cell.should be_dead
    end

    it "rule 2" do
        cell = Cell.new(world)
        new_cell = cell.spawn_at(1,0)
        other_new_cell = cell.spawn_at(-1,0)
        world.tick!
        cell.should be_alive
    end

    it "has a new grid that the world will play on" do
        World.new_grid
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