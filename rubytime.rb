require 'time'

class RubyTime
  attr_accessor :time

  def initialize(time)
    @time = time
  end

  def day
    @time.strftime("%A")
  end

  def add_hour
    @time.hour + 1
  end

  def find_day
    @time.strftime("%w")
  end

  def find_timezone
    @time.strftime("%Z")
  end

  def future_date
    t = @time.day + 100
    t.strftime("%A")
  end
end
