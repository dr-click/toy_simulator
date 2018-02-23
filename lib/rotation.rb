class Rotation
  attr_reader :current_face, :direction

  def initialize(current_face, direction)
    @current_face = current_face
    @direction = direction
  end

  def self.faces_map
    {"NORTH" => 0, "EAST" => 1, "SOUTH" => 2, "WEST" => 3}
  end

  def self.directions
    ["LEFT", "RIGHT"]
  end

  def rotate
    let_rotate
  end

  #######
  private
  #######

  def let_rotate
    return @current_face unless Rotation.faces_map[@current_face]
    face_map = Rotation.faces_map[@current_face]

    case @direction
    when "LEFT"
      face_map -= 1
    when "RIGHT"
      face_map += 1
    end

    face_map = 3 if face_map < 0
    face_map = 0 if face_map > 3

    Rotation.faces_map.invert[face_map]
  end
end
