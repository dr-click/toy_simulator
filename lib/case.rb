class Case
  attr_reader :toy, :board

  def initialize(x=5, y=5)
    @toy = nil
    @board = Board.new(x, y) # Create a board with 6 * 6 units
  end

  # Read line by line from sample files
  def read_line(line)
    line_command(line)
  end

  #######
  private
  #######

  # Parse command line
  def line_command(line)
    command, x, y, face = line.gsub(',', ' ').split

    case command.strip
    when "PLACE"
      @toy = Toy.new(x.to_i, y.to_i, face, @board)
    when "MOVE"
      @toy.move
    when "LEFT"
      @toy.rotate(command)
    when "RIGHT"
      @toy.rotate(command)
    when "REPORT"
      puts @toy.report
    end
  end
end
