class Platform
  
  def initialize(game_window,image,x,y)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, image)
    @x = x
    @y = y
  end
  
  def x
    @x
  end
  
  def y
    @y
  end
  
  def draw
   @icon.draw(@x,@y,1)
  end
  
  def height
    @icon.height
  end
  
  def touches?(player)
    player.x >= @x and
    player.x <= (@x+@icon.width) and
    player.y >= (@y - player.height + height) and
    player.y <= (@y+@icon.height)
  end
  
  def top
    @y
  end
  
end