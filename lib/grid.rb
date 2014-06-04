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

end
