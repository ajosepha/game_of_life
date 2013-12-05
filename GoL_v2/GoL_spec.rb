require 'rspec'
require './world.rb'
require './cell.rb'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true
 
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
 
  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

describe World, "#grid" do

    it "should have a new world with all os" do
        expect(World.new(2).grid).to eq([["o", "o"],["o", "o"]])
    end
end

 describe Cell, "#show_world" do
    it "should have a board" do
        expect(Cell.new.show_world).to eq([["o", "o"],["o", "o"]])
    end
end

# describe Cell, "#new_cell" do
#     it "should generate a new cell in the array" do
#     end
# end

# describe PigLatin, "#add_ay" do

#     it "should add an ay to the phrase" do
#         expect(PigLatin.new.add_ay("bob")).to eq("bobay")
#     end 
# end