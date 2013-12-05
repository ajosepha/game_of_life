require 'ap'
require './world.rb'

class Cell

    attr_reader :world

    def initialize(world)
        @world = world
    end

   # def show_world
   #   @world.grid
   #  end    

end
