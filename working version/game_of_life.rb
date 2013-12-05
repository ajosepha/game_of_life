
class Cell
  attr_accessor  :world, :x, :y 
# #     #two states, nil and alive (represented by an x)
# #     # def initialize#(board, x, y)
# #     #   #board = World.new
# #     # end

 def initialize(world, x=0, y=0)
  #default x and y to zero
    @world = world
    @x = x
    @y = y
#     @world = world
#     @x = x
#     @y = y
    world.cells << self
  end

  def die!
    world.cells -= [self]
  end

  def dead?
    !world.cells.include?(self)
  end

  def alive?
    world.cells.include?(self)
  end

  def neighbors
    @neighbors = []
    world.cells.each do |cell|
      #check to the north
      #cell is the position you are checking for
      if self.x==cell.x && self.y == cell.y - 1
        @neighbors << cell
      end 

      #has a cell to the NE
      if self.x==cell.x - 1 && self.y == cell.y - 1
        @neighbors << cell
      end

      #has a cell to the west
      if self.x==cell.x + 1 && self.y == cell.y
        @neighbors << cell
      end
    end

    @neighbors
  end

  def spawn_at(x, y)
    Cell.new(world, x, y)
  end
end

#   def neighbors
#     @neighbors = []
#     #  world.cells.each do |cell|  
#     #   if self.x == cell.x && self.y == cell.y - 1
#     #   #One cell lower than the one we are checking
#     #     @neighbors << cell 
#     #   end
#     # end  
#     # @neighbors
#         #will have 8 if statements iterating thorugh the array
#         #this will ideally count 
#       #the neighbors and return a count
#   end

#   def spawn_at(x, y)
#     Cell.new(x, y)
#   end
 


class World
  #will keep track of cells

  attr_accessor :cells, :size, :graph

    def initialize(size)
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