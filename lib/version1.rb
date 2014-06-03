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


end

class Ship

end
