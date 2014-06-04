class Grid

  def initialize
    @board = {}
    create_grid
  end

  def create_grid
    ('A'..'J').to_a.each do |letter|
      (1..10).to_a.each do |number|
        @board["#{letter}#{number}"] = "sea "
      end
    end
  end

  def board
    @board
  end

  # place method iterates through coordinates and creates a new array with incremented values.
  # these values are then used to place the ship into the grid.
  def place_vertical(ship, coordinate)
    array = 0.upto(ship.size - 1).map do |i|
      [(coordinate.split('')[0].ord + i).chr, coordinate.split('')[1]].join
    end
    array.each{|coordinate| @grid[coordinate] = :ship}
  end

  def place_horizontal(ship, coordinate)
    array = 0.upto(ship.size - 1).map do |i|
      [coordinate.split('')[0], (coordinate.split('')[1].ord + i).chr].join
    end
    array.each{|coordinate| @grid[coordinate] = :ship}
  end

  def check(coordinate)
    @board[coordinate]
  end

  def fire_at(coordinate)
    if check(coordinate) == "sea "
      "Miss"
    else
      check(coordinate).hit!
    end
  end

  def rotator(input, length, ship)
    0.upto(length - 1).map do |i|
      var = [(input.split('')[0].ord + i).chr, input.split('')[1]].join
    place(ship,var)
    end
  end

end
