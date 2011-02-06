class GameWindow < Gosu::Window
  
  def initialize
    super(500,500,0)
    @player = Player.new(self)
    @platforms = Array.new
    @platforms << Platform.new(self,'images/grass.png',-1,480)
  end
  
  def platforms
    @platforms
  end
  
  def update
    if button_down? Gosu::Button::KbSpace
      @player.jump
    end
    
    @player.update
  end
  
  def draw
    @player.draw
    @platforms.each {|platform| platform.draw}
  end
  
  def find_platform(player)
    @platforms.find {|platform| platform.touches?(player)}
  end
  
  
end
