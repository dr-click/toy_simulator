class Board
  attr_reader :x, :y

  def initialize(x, y)
    @x = x.to_i.abs # force board x to be integer greater than 0
    @y = y.to_i.abs # force board x to be integer greater than 0
  end
end
