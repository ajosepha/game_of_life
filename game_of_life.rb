
class Cell
  attr_accessor :world, :x, :y 
#     #two states, nil and alive (represented by an x)
#     # def initialize#(board, x, y)
#     #   #board = World.new
#     # end

  def initialize(world, x=0, y=0)
    @world = world
    @x = x
    @y = y
    world.cells << self
  end

  def neighbors
    @neighbors = []
     world.cells.each do |cell|  
      if self.x == cell.x && cell 
    end  
    @neighbors
        #will have 8 if statements iterating thorugh the array
        #this will ideally count 
      #the neighbors and return a count
  end

  def spawn_at(x, y)
    Cell.new(world, x, y)
  end
end


class World

  attr_accessor :cells

    def initialize
        #@dimensions = dimensions
        @cells = []
    end

    #  def new_board
    #   @dimensions.times do |x|
    #     #x is the big array
    #     #there are dimensions rows 
    #     #the value of x and y will be equal to each other
    #     @board << []
    #         @dimensions.times do |y|
    #             #y is the smaller arrays and slots
    #             @board[x] << Cell.new(x, y)
    #         end
    #   end
    # end
end