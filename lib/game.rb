class Game

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @playerX = Player.create("X")
    @playerO = Player.create("O")
    @win = [[1,2,3], [1,4,7], [1,5,9], [4,5,6], [7,8,9], [7,5,3], [2,5,8], [3,6,9]]
  end

  def playerX
    @playerX
  end

  def playerO
    @playerO
  end

  def Game.create
    new_game = Game.new
    new_game
  end

  def board
    @board
  end

  def win
    @win
  end

  def board_check(input)
    if @board[input-1] == "X" || @board[input-1] == "O"
      return false
    end
  end

  def win_conditions(player_check)
    @win.each do |a|
      if (a - player_check).size == 0
        return true
      end
    end
    false
  end

  def cats_game
    if @board.all? {|e| e == 'X' || e == 'O'}
      return true
    else
      return false
    end
  end
end

