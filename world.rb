

class World
  #will keep track of cells

  attr_accessor :cells, :size, :graph

    def initialize
        @size = size
        @cells = []
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