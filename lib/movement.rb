class Movement
  attr_reader :x, :y, :f

  def initialize(toy, board, step=1)
    @toy = toy
    @board = board
    @step = step
  end

  # Move a toy x steps
  def move
    @board.in_range(let_move)
  end

  #######
  private
  #######

  # Check for the current toy face to move
  def let_move
    case @toy.face
    when "NORTH"
      move_top
    when "EAST"
      move_right
    when "SOUTH"
      move_bottom
    when "WEST"
      move_left
    end
  end

  # Move to right in case of EAST face
  def move_right
    {x: @toy.current_position[:x] + @step, y: @toy.current_position[:y]}
  end

  # Move to left in case of WEST face
  def move_left
    {x: @toy.current_position[:x] - @step, y: @toy.current_position[:y]}
  end

  # Move to top in case of NORTH face
  def move_top
    {x: @toy.current_position[:x], y: @toy.current_position[:y] + @step}
  end
  
  # Move to bottom in case of SOUTH face
  def move_bottom
    {x: @toy.current_position[:x], y: @toy.current_position[:y] - @step}
  end
end
