class Map
  CHIP_SIZE = 20
  def initialize
    @data = []
    (Window.height / CHIP_SIZE).times do
      line = []
      (Window.width / CHIP_SIZE).times do
        line << 0
      end
      @data << line
    end
     @trace_image = Image.new(CHIP_SIZE, CHIP_SIZE).circle_fill(10, 10, 10, C_RED)
  end

  def update(px, py)

    @data[py / CHIP_SIZE][px / CHIP_SIZE] = 1
  end

  def draw
    @data.each_with_index do |line, dy|
      line.each_with_index do |chip, dx|
        Window.draw(dx * CHIP_SIZE, dy * CHIP_SIZE, @trace_image) if chip == 1
      end
    end
  end

  def minmax
    if px >= 600
      @x = 600
    elsif px <= 0
      @x = 0
    end
    if py >= 800
      @y = 800
    elsif py <= 0
      @y = 0
    end
  end

end