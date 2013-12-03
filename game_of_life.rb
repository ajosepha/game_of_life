class Cell
    #two states, nil and alive (represented by an x)
    def initialize
    end

    def neighbors
         []
    end

end


def Board


    # attr_accessor :board

    def initialize
       @board = board
    end

     def new_board(dimensions)
      @board = Array.new(dimensions) {Array.new(dimensions)}
    end
end