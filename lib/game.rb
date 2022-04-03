require './lib/board'

class Game

  def initialize
    @board = Board.new
    @message = Message.new
  end

  def player_turn
    @message.user_message
    user_input = gets.chomp.downcase.to_sym
    check_column(user_input)
    @board.print_board
    vertical_win_clause
    horizontal_win_clause
    #check win condition method
  end

  def comp_turn
    choices = [:a, :b, :c, :d, :e, :f, :g]
    choices.shuffle!
    comp_input = choices[0]
    check_column(comp_input)
    @board.print_board
    vertical_win_clause
    horizontal_win_clause
    #check comp_win_claus
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
       p 'error select column a-g'#to do put in error message
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
      break
    else
      @message.invalid_input_message
      start
    end
  end

  def vertical_win_clause(user_input)
   vertical = @board.hash_columns[user_input].find_all_index("X")
   if vertical == [0, 1, 2, 3]
     player_win
   elsif vertical == [1, 2, 3, 4]
     player_win
   elsif vertical == [2, 3, 4, 5]
     player_win
   end
  end
  
  def horizontal_win_clause
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


  def player_win
    @message.player_win_message
    break
  end

  def computer_win
    @message.computer_win_message
    break
  end
end
