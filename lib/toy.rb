class Toy
  attr_reader :current_position

  def initialize(x=nil, y=nil)
    @current_position = x && y ? {x: x, y: y} : nil
  end
end
