

class World
  #will keep track of cells

  attr_accessor :cells, :size
  attr_reader :grid

    def initialize
        @size = size
        @cells = []
        @grid = []
    end

    def tick!
      cells.each do |cell|
        if cell.neighbors.count < 2
          cell.die!
        elsif cell.neighbors.count == 2
          cell.alive!
        end
      end

      def new_grid
        @size.times do |outer|
          @grid << []
        end
      end

    end
end