class Grid
  def initialize
    @board = [:sea, :sea]
  end

  def board
    @board
  end

  def place(ship,position)
    @board[position] = ship
    board
  end

  def check(coordinate)
    @board[coordinate]
  end

  def fire_at(coordinate)
    if check(coordinate) == :sea
      "Miss"
    else
      check(coordinate).hit!
    end
  end

end

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

end
