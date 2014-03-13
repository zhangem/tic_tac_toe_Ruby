class Board
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def board
    @board
  end

  def Board.create
    new_board = Board.new
    new_board
  end
end
