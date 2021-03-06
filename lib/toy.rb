class Toy
  attr_reader :current_position, :face, :board, :error

  def initialize(x=nil, y=nil, f=nil, board)
    @current_position = board.in_range({x: x, y: y})
    @face = Toy.faces.include?(f) ? f : nil
    @board = board
    @error = nil
  end

  # List of available toy faces
  def self.faces
    ["NORTH", "EAST", "SOUTH", "WEST"]
  end

  # Move the valid toy on a valid bord or raise exception
  def move
    if @face && @board && @current_position
      new_position = Movement.new(self, @board).move
      if new_position
        @current_position = new_position
      else
        @current_position = nil
        @fac = nil
        @error = "Can't move, Out of board range"
      end
    else
      @current_position = nil
      @fac = nil
      @error = "Can't move, InvalidToy or InvalidBoard"
    end
  end

  # Rotate the valid toy on a valid bord or raise exception
  def rotate(face)
    @face = Rotation.new(@face, face).rotate
  end

  # Final sample case results
  def report
    @current_position && @face ? "#{@current_position[:x]},#{@current_position[:y]},#{@face}" : @error
  end
end
