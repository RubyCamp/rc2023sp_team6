require 'dxruby'
require_relative 'player'
require_relative 'map'

player = Player.new
map = Map.new

Window.width = 800
Window.height = 600

Window.loop do
  map.update(player.x, player.y)
  map.draw

  player.update
  player.draw
  p @y
end