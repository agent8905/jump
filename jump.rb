module Jump
  
  def update_jump
    if @jumping
      if @go_up
        handle_up_motion
      elsif @go_down
        handle_down_motion
      end
    end
  end
  
  def handle_up_motion
    if @go_down_at < Time.now.to_f
      @go_down = true
      @go_up = false
    else
      if @y < 0 
        @y = 0
      else
        @y = @y - 10
      end
      
    end
  end
  
  def handle_down_motion
    if (current_platform = @game_window.find_platform(self))
      @y = current_platform.top - @icon.height + current_platform.height
      @jumping = false
    else
      @y = @y + 10
    end
  end
  
  def jump
    unless @jumping
      @go_up = true
      @jumping = true
      @go_down_at = (Time.now.to_f + 0.3)
      @end_jump_at = @go_down_at + 0.3
    end
  end
  
end
