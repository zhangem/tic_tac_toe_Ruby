class Player
  attr_reader(:name)

  def initialize(name)
    @name = name
    @player_win = []
  end

  def Player.create(name)
    new_player = Player.new(name)
    new_player
  end

  def player_win
    @player_win
  end
end
