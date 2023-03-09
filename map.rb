class Map
  CHIP_SIZE = 20
  def initialize
    @data = []
    (600 / CHIP_SIZE).times do #Window.height、Window.widthだと上手く実行できない
      line = []
      (800 / CHIP_SIZE).times do
        line << 0
      end
      @data << line
    end
     @trace_image1 = Image.new(CHIP_SIZE, CHIP_SIZE).circle_fill(10, 10, 10, C_RED)
     @trace_image2 = Image.new(CHIP_SIZE, CHIP_SIZE).circle_fill(10, 10, 10, C_GREEN)
  end

  def update(px, py, ex, ey)
    dx = px / CHIP_SIZE
    dy = py / CHIP_SIZE
    hx = ex / CHIP_SIZE
    hy = ey / CHIP_SIZE

   if dy <= 0
    dy = 0
   elsif dy >= @data.length - 1
    dy = @data.length - 1
   end

   if dx <= 0
    dx = 0
   elsif dx >= @data[0].length - 1
    dx = @data[0].length - 1
   end
    @data[dy][dx] = 1

   if hy <= 0
    hy = 0
   elsif hy >= @data.length - 1
    hy = @data.length - 1
   end

   if hx <= 0
    hx = 0
   elsif hx >= @data[0].length - 1
    hx = @data[0].length - 1
   end
    @data[hy][hx] = 2
  end

  def draw
    @data.each_with_index do |line, dy|
      line.each_with_index do |chip, dx|
        Window.draw(dx * CHIP_SIZE, dy * CHIP_SIZE, @trace_image1) if chip == 1
      end
    end
    @data.each_with_index do |line, hy|
      line.each_with_index do |chip, hx|
        Window.draw(hx * CHIP_SIZE, hy * CHIP_SIZE, @trace_image2) if chip == 2
      end
    end
  end
end