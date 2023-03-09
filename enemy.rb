require_relative "character"
class Enemy < Character
    def update
       @f += 1
       if @f % 60 == 0 #1秒当たり60
        @dx = rand(3) - 1
        @dy = rand(3) - 1
       end
       @x += @dx
       @y += @dy
        self.limit
    end
end
