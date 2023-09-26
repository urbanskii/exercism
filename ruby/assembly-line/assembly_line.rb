class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed < 5
      return @speed * 221            
    elsif @speed >= 5 || @speed <= 8
      @speed = @speed * 221
      @speed = @speed *0.90
      return @speed
    elsif @speed > 8 && @speed <10
      @speed = @speed * 221
      @speed = @speed * 0.80
      return  @speed
    else
      @speed = @speed * 221
      @speed = @speed * 0.70
      return @speed
    end
    raise 'Please implement the AssemblyLine#production_rate_per_hour method'
  end

  def working_items_per_minute
    if @speed == 1
      return production_rate_per_hour(@speed)/60.to_i            
    elsif @speed == 5 || @speed == 8 || @speed == 9
      @speed = @speed * 221
      @speed = @speed *0.90
      return production_rate_per_hour(@speed)/60.to_i  
    elsif @speed == 9
      @speed = @speed * 221
      @speed = @speed * 0.80
      return production_rate_per_hour(@speed)/60.to_i  
    else
      @speed = @speed * 221
      @speed = @speed * 0.70
      return production_rate_per_hour(@speed)/60.to_i  
    end

    raise 'Please implement the AssemblyLine#working_items_per_minute method'
  end
end
