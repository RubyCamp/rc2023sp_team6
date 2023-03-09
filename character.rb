class Character
    attr_accessor :x, :y
    def initialize(x, y, image)
        @x = x
        @y = y
        @image = image
        @f = 0
        @dx = 0
        @dy = 0
    end

    def limit
        @x = Window.width - 20 if @x > Window.width - 20
        @x = 0 if @x < 0

        @y = Window.height - 20 if @y > Window.height - 20
        @y = 0 if @y < 0
    end

    def draw
        Window.draw(@x, @y, @image)
    end
end