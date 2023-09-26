class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed < 5
      @speed = @speed * 221
    elsif @speed >= 5 && @speed <= 8
      @speed = @speed * 221 * 0.90
    elsif @speed == 9 
      @speed = @speed * 221 * 0.80
    elsif @speed == 10
      @speed = @speed  * 221 * 0.77
    end 
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
