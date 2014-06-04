class Ship

  def initialize
    @hit = false
    @sunk = false
  end

  def hit?
    @hit
  end

  def sunk?
    @sunk
  end

  def hit!
    @hit = true
    @sunk = true
    self
  end

  def length(length)
    ship_array
  end

end

class AircraftCarrier
  def initialize
    @size = 5
  end
  attr_reader :size
end

class Dreadnought
  def initialize
    @size = 4
  end
  attr_reader :size
end

class Cruiser
  def initialize
    @size = 3
  end
  attr_reader :size
end

class Destroyer
  def initialize
    @size = 2
  end
  attr_reader :size
end

class Submarine
  def initialize
    @size = 1
  end

  attr_reader :size
end