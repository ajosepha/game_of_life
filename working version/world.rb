

class World
  #will keep track of cells

  attr_accessor :cells, :size
  attr_reader :grid

    def initialize
        @size = size
        @cells = []
        @board = []
    end

    def tick!
      cells.each do |cell|
        if cell.neighbors.count < 2
          cell.die!
        elsif cell.neighbors.count > 3
          cell.die
        elsif cell.neighbors.count == 3
          cell.alive!
        end
      end

    #    def grid
    #     #@board = []
    #     #debugger
    #     @size.times do |h|
    #         @board << []
    #         @size.times do |s|
    #             @board[h] << "o"
    #         end
    #     end
    #     @board
    # end

    end
end