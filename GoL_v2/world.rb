require 'ap'
require 'debugger'
class World

    #attr_accessor :size
    def size
        @size 
    end

    def initialize(size)
        @size = size
        @board = []
    end

    def grid(size)
        #@board = []
        #debugger
        @size.times do |h|
            @board << []
            @size.times do |s|
                @board[h] << "."
            end
        end
        @board
    end

    # def print_board
    #     ap @board
    # end
end


