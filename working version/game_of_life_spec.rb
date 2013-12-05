require 'rspec'
require './cell'
require './world'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true
 
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
 
  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end


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

    it "detects a neighbor to the south" do
        cell = subject.spawn_at(0, -1)
        subject.neighbors.count.should == 1
    end

      it "detects a neighbor to the east" do
        cell = subject.spawn_at(1, 0)
        subject.neighbors.count.should == 1
    end

    it "detects a neighbor to the southeast" do
        cell = subject.spawn_at(1, -1) 
        subject.neighbors.count.should == 1
    end

     it "detects a neighbor to the southwest" do
        cell = subject.spawn_at(-1, -1) 
        subject.neighbors.count.should == 1
    end

    it "detects a neighbor to the north west" do
        cell = subject.spawn_at(-1, 1) 
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


end

# describe World, "#grid" do

#     it "should have a new world with all os" do
#         expect(World.new.grid(2)).to eq([[".", "."],[".", "."]])
#     end
# end 

#simple tests
#