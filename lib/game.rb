require './lib/board'
require './lib/messages'

class Game
  attr_reader :board
  def initialize
    @board = Board.new
    @message = Message.new
  end

  def start
    @message.welcome_message
    board_clear
    start_input = STDIN.gets.chomp.downcase
    if start_input == 'start'
      turn
    elsif start_input == 'exit'
      p 'Later Skater'
      abort
    else
      @message.invalid_input_message
      start
    end
  end

  def board_clear
    @board.hash_columns[:a] = ['.', '.', '.', '.', '.', '.']
    @board.hash_columns[:b] = ['.', '.', '.', '.', '.', '.']
    @board.hash_columns[:c] = ['.', '.', '.', '.', '.', '.']
    @board.hash_columns[:d] = ['.', '.', '.', '.', '.', '.']
    @board.hash_columns[:e] = ['.', '.', '.', '.', '.', '.']
    @board.hash_columns[:f] = ['.', '.', '.', '.', '.', '.']
    @board.hash_columns[:g] = ['.', '.', '.', '.', '.', '.']
  end

  def turn
    player_turn
    comp_turn
    turn
  end

  def player_turn
    @message.player_message
    user_input = gets.chomp.downcase.to_sym
    invalid_input(user_input)
    player_check_column(user_input)
    @board.print_board
    player_vertical_win_clause(user_input)
    player_horizontal_win_clause
    draw
    #check diag win condition method
  end

  def invalid_input(user_input)
    if user_input == :a
    elsif user_input == :b
    elsif user_input == :c
    elsif user_input == :d
    elsif user_input == :e
    elsif user_input == :f
    elsif user_input == :g
    elsif user_input == :exit
      p "Later Skater"
      abort
    else
      puts @message.error_message
      turn
    end
  end

  def player_check_column(user_input)
    if @board.hash_columns[user_input][5] == "."
      player_place_piece(user_input)
    else
      @message.error_message
      player_turn
    end
  end

  def player_place_piece(user_input)
    index = @board.hash_columns[user_input].find_index(".")
    @board.hash_columns[user_input][index] = "X"
  end


  def comp_turn
    choices = [:a, :b, :c, :d, :e, :f, :g]
    choices.shuffle!
    comp_input = choices[0]
    comp_check_column(comp_input)
    @board.print_board
    comp_vertical_win_clause(comp_input)
    comp_horizontal_win_clause
    draw
    #check diag win condition method
  end

  def comp_check_column(comp_input)
    if @board.hash_columns[comp_input][5] == "."
       comp_place_piece(comp_input)
    else
       comp_turn
    end
  end

  def comp_place_piece(comp_input)
    index = @board.hash_columns[comp_input].find_index(".")
    @board.hash_columns[comp_input][index] = "O"
  end


  def player_vertical_win_clause(user_input)
  vertical = @board.hash_columns[user_input].each_with_index.map{|x,i| x == "X"? i : nil}.compact
   if vertical == [0, 1, 2, 3]
     player_win
   elsif vertical == [1, 2, 3, 4]
     player_win
   elsif vertical == [2, 3, 4, 5]
     player_win
   else
   end
  end

  def player_horizontal_win_clause
    (row6,row5,row4,row3,row2,row1,) = @board.hash_columns.values.transpose
    six = row6.each_with_index.map{|x,i| x == "X"? i : nil}.compact
    if six == [0, 1, 2, 3]
      player_win
    elsif six == [1, 2, 3, 4]
      player_win
    elsif six == [2, 3, 4, 5]
      player_win
    elsif six == [3, 4, 5, 6]
      player_win
    elsif six == [0, 1, 2, 3 , 4]
      player_win
    elsif six == [1, 2, 3, 4 , 5]
      player_win
    elsif six == [2, 3, 4, 5 , 6]
      player_win
    end

    five = row5.each_with_index.map{|x,i| x == "X"? i : nil}.compact
    if five == [0, 1, 2, 3]
      player_win
    elsif five == [1, 2, 3, 4]
      player_win
    elsif five == [2, 3, 4, 5]
      player_win
    elsif five == [3, 4, 5, 6]
      player_win
    elsif five == [0, 1, 2, 3 , 4]
      player_win
    elsif five == [1, 2, 3, 4 , 5]
      player_win
    elsif five == [2, 3, 4, 5 , 6]
      player_win
    end

    four = row4.each_with_index.map{|x,i| x == "X"? i : nil}.compact
    if four == [0, 1, 2, 3]
      player_win
    elsif four == [1, 2, 3, 4]
      player_win
    elsif four == [2, 3, 4, 5]
      player_win
    elsif four == [3, 4, 5, 6]
      player_win
    elsif four == [0, 1, 2, 3 , 4]
      player_win
    elsif four == [1, 2, 3, 4 , 5]
      player_win
    elsif four == [2, 3, 4, 5 , 6]
      player_win
    end

    three = row3.each_with_index.map{|x,i| x == "X"? i : nil}.compact
    if three == [0, 1, 2, 3]
      player_win
    elsif three == [1, 2, 3, 4]
      player_win
    elsif three == [2, 3, 4, 5]
      player_win
    elsif three == [3, 4, 5, 6]
      player_win
    elsif three == [0, 1, 2, 3 , 4]
      player_win
    elsif three == [1, 2, 3, 4 , 5]
      player_win
    elsif three == [2, 3, 4 , 5, 6]
      player_win
    end

    two = row2.each_with_index.map{|x,i| x == "X"? i : nil}.compact
    if two == [0, 1, 2, 3]
      player_win
    elsif two == [1, 2, 3, 4]
      player_win
    elsif two == [2, 3, 4, 5]
      player_win
    elsif two == [3, 4, 5, 6]
      player_win
    elsif two == [0, 1, 2, 3 , 4]
      player_win
    elsif two == [1, 2, 3, 4 , 5]
      player_win
    elsif two == [2, 3, 4, 5 , 6]
      player_win
    end

    one = row1.each_with_index.map{|x,i| x == "X"? i : nil}.compact
    if one == [0, 1, 2, 3]
      player_win
    elsif one == [1, 2, 3, 4]
      player_win
    elsif one == [2, 3, 4, 5]
      player_win
    elsif one == [3, 4, 5, 6]
      player_win
    elsif one == [0, 1, 2, 3 , 4]
      player_win
    elsif one == [1, 2, 3, 4 , 5]
      player_win
    elsif one == [2, 3, 4, 5 , 6]
      player_win
    end
  end

  def comp_vertical_win_clause(comp_input)
    vertical = @board.hash_columns[comp_input].each_with_index.map{|x,i| x == "O"? i : nil}.compact
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
    six = row6.each_with_index.map{|x,i| x == "O"? i : nil}.compact
    if six == [0, 1, 2, 3]
      computer_win
    elsif six == [1, 2, 3, 4]
      computer_win
    elsif six == [2, 3, 4, 5]
      computer_win
    elsif six == [3, 4, 5, 6]
      computer_win
    elsif six == [0, 1, 2, 3 , 4]
      computer_win
    elsif six == [1, 2, 3, 4 , 5]
      computer_win
    elsif six == [2, 3, 4, 5 , 6]
      computer_win
    end

    five = row5.each_with_index.map{|x,i| x == "O"? i : nil}.compact
    if five == [0, 1, 2, 3]
      computer_win
    elsif five == [1, 2, 3, 4]
      computer_win
    elsif five == [2, 3, 4, 5]
      computer_win
    elsif five == [3, 4, 5, 6]
      computer_win
    elsif five == [0, 1, 2, 3 , 4]
      computer_win
    elsif five == [1, 2, 3, 4 , 5]
      computer_win
    elsif five == [2, 3, 4, 5 , 6]
      computer_win
    end

    four = row4.each_with_index.map{|x,i| x == "O"? i : nil}.compact
    if four == [0, 1, 2, 3]
      computer_win
    elsif four == [1, 2, 3, 4]
      computer_win
    elsif four == [2, 3, 4, 5]
      computer_win
    elsif four == [3, 4, 5, 6]
      computer_win
    elsif four == [0, 1, 2, 3 , 4]
      computer_win
    elsif four == [1, 2, 3, 4 , 5]
      computer_win
    elsif four == [2, 3, 4, 5 , 6]
      computer_win
    end

    three = row3.each_with_index.map{|x,i| x == "O"? i : nil}.compact
    if three == [0, 1, 2, 3]
      computer_win
    elsif three == [1, 2, 3, 4]
      computer_win
    elsif three == [2, 3, 4, 5]
      computer_win
    elsif three == [3, 4, 5, 6]
      computer_win
    elsif three == [0, 1, 2, 3 , 4]
      computer_win
    elsif three == [1, 2, 3, 4 , 5]
      computer_win
    elsif three == [2, 3, 4, 5 , 6]
      computer_win
    end

    two = row2.each_with_index.map{|x,i| x == "O"? i : nil}.compact
    if two == [0, 1, 2, 3]
      computer_win
    elsif two == [1, 2, 3, 4]
      computer_win
    elsif two == [2, 3, 4, 5]
      computer_win
    elsif two == [3, 4, 5, 6]
      computer_win
    elsif two == [0, 1, 2, 3 , 4]
      computer_win
    elsif two == [1, 2, 3, 4 , 5]
      computer_win
    elsif two == [2, 3, 4, 5 , 6]
      computer_win
    end

    one = row1.each_with_index.map{|x,i| x == "O"? i : nil}.compact
    if one == [0, 1, 2, 3]
      computer_win
    elsif one == [1, 2, 3, 4]
      computer_win
    elsif one == [2, 3, 4, 5]
      computer_win
    elsif one == [3, 4, 5, 6]
      computer_win
    elsif one == [0, 1, 2, 3 , 4]
      computer_win
    elsif one == [1, 2, 3, 4 , 5]
      computer_win
    elsif one == [2, 3, 4, 5 , 6]
      computer_win
    end
  end

  def player_win
    @message.player_win_message
    start
  end

  def computer_win
    @message.computer_win_message
    start
  end

  def draw
    draw_block = []
    @board.hash_columns.each do |key, value|
      if @board.hash_columns[key][5] != "."
        draw_block << key
        if draw_block == [:a, :b, :c, :d, :e, :f, :g]
          @message.draw_message
          start
        end
      end
    end
  end
end
