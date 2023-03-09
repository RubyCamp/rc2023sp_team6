require 'dxruby'

require_relative 'player'
require_relative 'map'
require_relative 'enemy'
require_relative 'character'

image1 = Image.new(20, 20).circle_fill(10, 10, 10, C_WHITE)
image2 = Image.new(20, 20).circle_fill(10, 10, 10, C_BLUE)
player = Player.new(100, 100, image1)
map = Map.new
enemy = Enemy.new(200, 200, image2)

Window.width = 800
Window.height = 600


Window.loop do
  map.update(player.x, player.y, enemy.x, enemy.y)
  map.draw

  player.update
  player.draw
  enemy.update
  enemy.draw
  break if Input.key_push?(K_ESCAPE)
end