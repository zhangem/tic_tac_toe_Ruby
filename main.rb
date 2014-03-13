require './lib/game'
require './lib/player'

def main_menu
  system('clear')
  puts "Welcome to Tic Tac Toe!"
  puts "Press any key to start a game!"
  gets.chomp
  new_game = Game.create
  playerX_menu(new_game)
end

def playerX_menu(new_game)
  system('clear')
  puts "Player X's turn!"
  show_board(new_game)
  puts "Select a number to start."
  playerX_input = gets.chomp
  puts "\n"
  if new_game.board_check(playerX_input.to_i) == false
    puts "Spot has already been chosen! Pick another spot."
    playerX_menu(new_game)
  end
  new_game.playerX.player_win << playerX_input.to_i
  new_game.board[playerX_input.to_i - 1] = "X"
  if new_game.win_conditions(new_game.playerX.player_win) == true
    puts "Player X wins!"
    puts "Press any key for another game!"
    gets.chomp
    main_menu
  end
  if new_game.cats_game == true
    puts "Nobody wins!"
    puts "Press any key for another game!"
    gets.chomp
    main_menu
  end
  playerO_menu(new_game)
end

def playerO_menu(new_game)
  system('clear')
  puts "Player O's turn!"
  show_board(new_game)
  puts "Select which number to mark: "
  playerO_input = gets.chomp
  puts "\n"
  if new_game.board_check(playerO_input.to_i) == false
    puts "Spot has already been chosen! Pick another spot."
    playerO_menu(new_game)
  end
  new_game.playerO.player_win << playerO_input.to_i
  new_game.board[playerO_input.to_i - 1] = "O"
  if new_game.win_conditions(new_game.playerO.player_win) == true
    puts "Player O wins!"
    puts "Press any key for another game!"
    gets.chomp
    main_menu
  end
  playerX_menu(new_game)
end

def show_board(new_game)
  puts "[" + new_game.board[0].to_s + "]" + "["+ new_game.board[1].to_s + "]" + "[" + new_game.board[2].to_s + "]"
  puts "["+ new_game.board[3].to_s + "]" + "["+ new_game.board[4].to_s + "]" +  "[" + new_game.board[5].to_s + "]"
  puts "["+ new_game.board[6].to_s + "]" + "["+ new_game.board[7].to_s + "]" + "[" + new_game.board[8].to_s + "]"
end



main_menu
