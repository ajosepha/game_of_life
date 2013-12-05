
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
    dead == false
  end

  def neighbors
    @neighbors = [ ]
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
