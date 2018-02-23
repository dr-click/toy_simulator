class Board
  attr_reader :x, :y

  def initialize(x, y)
    @x = x.to_i.abs # force board x to be integer greater than 0
    @y = y.to_i.abs # force board x to be integer greater than 0
  end


  # Check if the giving position in the board range, @return [position, nil]
  def in_range(new_position)
    return new_position if new_position[:x] >=0 && new_position[:y] >=0 && new_position[:x] < @x && new_position[:y] < @y
    return nil
  end

  # Check if the giving position in the board range, @return [true, false]
  def in_range?(new_position)
    !!in_range(new_position)
  end
end
