require 'jump'
require 'movement'

class Player
  include Jump
  include Movement
  
  attr_reader :x, :y
  
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/mushroom.png")
    @x = 50
    @y = 300
  end
  
  def update
    update_jump
    move
  end
  
  def draw
    @icon.draw(@x,@y,1)
  end
  
  def height
    @icon.height
  end
  
end
