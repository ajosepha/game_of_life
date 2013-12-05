require 'ap'
require 'debugger'
class World

    #attr_accessor :size
    def size
        @size 
    end

    

    def initialize(size)
        @size = size
        #@board = []
    end

    def grid
        @board = []
        debugger
        @size.times do |h|
            @board << []
            @size.times do |s|
                @board[h] << "o"
            end
        end
    end
end


