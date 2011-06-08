class Timer
  attr_reader :started_at, :stopped_at
  
  def initialize()
    reset_timer
  end      

  def start
    @started_at = Time.now
  end
  
  def stop
    @stopped_at = Time.now
  end

  def elapsed_time    
    if started_at == nil || stopped_at == nil
      0.to_f
    else
      stopped_at - started_at
    end
  end

  def reset_timer
    @started_at = nil
    @stopped_at = nil    
  end  
end