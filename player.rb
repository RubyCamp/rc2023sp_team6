require_relative "character"

class Player < Character
  def update
    @x += Input.x
    @y += Input.y
    self.limit
  end
end
