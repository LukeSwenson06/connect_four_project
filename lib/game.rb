require './lib/board'
require './lib/messages'

class Game

  def initialize
    @board = Board.new
    @message = Message.new
  end

  def player_turn
    @message.player_message
    user_input = gets.chomp.downcase.to_sym
    check_column(user_input)
    @board.print_board
    player_vertical_win_clause
    player_horizontal_win_clause
    #check diag win condition method
  end

  def comp_turn
    choices = [:a, :b, :c, :d, :e, :f, :g]
    choices.shuffle!
    comp_input = choices[0]
    check_column(comp_input)
    @board.print_board
    comp_vertical_win_clause
    comp_horizontal_win_clause
    #check diag win condition method
  end

  def turn
    player_turn
    comp_turn
    turn
  end


  def check_column(user_input)
    if @board.hash_columns[user_input][5] == "."
       place_piece(user_input)
    else
       @message.error_message
       player_turn
    end

  end

  def place_piece(user_input)
    index = @board.hash_columns[user_input].find_index(".")
    @board.hash_columns[user_input][index] = "X"
  end

  def start
    @message.welcome_message
    start_input = gets.chomp.downcase.to_sym
    if start_input == 'start'
      turn
    elsif input == 'exit'
      p 'sucks to suck'
      # break
    else
      @message.invalid_input_message
      start
    end
  end

  def player_vertical_win_clause(user_input)
   vertical = @board.hash_columns[user_input].find_all_index("X")
   if vertical == [0, 1, 2, 3]
     player_win
   elsif vertical == [1, 2, 3, 4]
     player_win
   elsif vertical == [2, 3, 4, 5]
     player_win
   end
  end

  def player_horizontal_win_clause
    (row6,row5,row4,row3,row2,row1,) = @board.hash_columns.values.transpose
    six = row6.find_all_index('X')
    if six == [0, 1, 2, 3]
      player_win
    elsif six == [1, 2, 3, 4]
      player_win
    elsif six == [2, 3, 4, 5]
      player_win
    elsif six == [3, 4, 5, 6]
      player_win
    end

    five = row5.find_all_index('X')
    if five == [0, 1, 2, 3]
      player_win
    elsif five == [1, 2, 3, 4]
      player_win
    elsif five == [2, 3, 4, 5]
      player_win
    elsif five == [3, 4, 5, 6]
      player_win
    end

    four = row4.find_all_index('X')
    if four == [0, 1, 2, 3]
      player_win
    elsif four == [1, 2, 3, 4]
      player_win
    elsif four == [2, 3, 4, 5]
      player_win
    elsif four == [3, 4, 5, 6]
      player_win
    end

    three = row3.find_all_index('X')
    if three == [0, 1, 2, 3]
      player_win
    elsif three == [1, 2, 3, 4]
      player_win
    elsif three == [2, 3, 4, 5]
      player_win
    elsif three == [3, 4, 5, 6]
      player_win
    end

    two = row2.find_all_index('X')
    if two == [0, 1, 2, 3]
      player_win
    elsif two == [1, 2, 3, 4]
      player_win
    elsif two == [2, 3, 4, 5]
      player_win
    elsif two == [3, 4, 5, 6]
      player_win
    end

    one = row1.find_all_index('X')
    if one == [0, 1, 2, 3]
      player_win
    elsif one == [1, 2, 3, 4]
      player_win
    elsif one == [2, 3, 4, 5]
      player_win
    elsif one == [3, 4, 5, 6]
      player_win
    end
  end

  def comp_vertical_win_clause(user_input)
   vertical = @board.hash_columns[user_input].find_all_index("O")
   if vertical == [0, 1, 2, 3]
     computer_win
   elsif vertical == [1, 2, 3, 4]
     computer_win
   elsif vertical == [2, 3, 4, 5]
     computer_win
   end
  end

  def comp_horizontal_win_clause
    (row6,row5,row4,row3,row2,row1,) = @board.hash_columns.values.transpose
    six = row6.find_all_index('O')
    if six == [0, 1, 2, 3]
      computer_win
    elsif six == [1, 2, 3, 4]
      computer_win
    elsif six == [2, 3, 4, 5]
      computer_win
    elsif six == [3, 4, 5, 6]
      computer_win
    end

    five = row5.find_all_index('O')
    if five == [0, 1, 2, 3]
      computer_win
    elsif five == [1, 2, 3, 4]
      computer_win
    elsif five == [2, 3, 4, 5]
      computer_win
    elsif five == [3, 4, 5, 6]
      computer_win
    end

    four = row4.find_all_index('O')
    if four == [0, 1, 2, 3]
      computer_win
    elsif four == [1, 2, 3, 4]
      computer_win
    elsif four == [2, 3, 4, 5]
      computer_win
    elsif four == [3, 4, 5, 6]
      computer_win
    end

    three = row3.find_all_index('O')
    if three == [0, 1, 2, 3]
      computer_win
    elsif three == [1, 2, 3, 4]
      computer_win
    elsif three == [2, 3, 4, 5]
      computer_win
    elsif three == [3, 4, 5, 6]
      computer_win
    end

    two = row2.find_all_index('O')
    if two == [0, 1, 2, 3]
      computer_win
    elsif two == [1, 2, 3, 4]
      computer_win
    elsif two == [2, 3, 4, 5]
      computer_win
    elsif two == [3, 4, 5, 6]
      computer_win
    end

    one = row1.find_all_index('O')
    if one == [0, 1, 2, 3]
      computer_win
    elsif one == [1, 2, 3, 4]
      computer_win
    elsif one == [2, 3, 4, 5]
      computer_win
    elsif one == [3, 4, 5, 6]
      computer_win
    end
  end


  def player_win
    @message.player_win_message
    abort
    # break
  end

  def computer_win
    @message.computer_win_message
    abort

    # break
  end
end
