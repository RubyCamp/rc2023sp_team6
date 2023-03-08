class Player
  attr_accessor :x, :y

  def initialize
    @x = 100
    @y = 100
    @image = Image.new(20, 20).circle_fill(10, 10, 10, C_WHITE)
  end

  def update
    @x += Input.x
    @y += Input.y
  end

  def draw
    Window.draw(@x, @y, @image)
  end
  
end
