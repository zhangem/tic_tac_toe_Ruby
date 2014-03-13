require 'rspec'
require 'game'
require 'player'
require 'board'

describe Player do
  it 'initializes an instance of player' do
    test_player = Player.create("X")
    test_player.should be_an_instance_of Player
  end
end

describe Board do
  it 'initializes an instance of board' do
    test_board = Board.create
    test_board.should be_an_instance_of Board
  end
end


