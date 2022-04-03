require './lib/board'

class Game

  def initialize
    @board = Board.new
    @message = Message.new


  end

  def player_win_claus
    #conditional to win vertical
    #conditional to win horizontal
    #conditional to win diagonal
    # condition to draw
  end

  def comp_win_claus
    #conditional to win vertical
    #conditional to win horizontal
    #conditional to win diagonal
    # condition to draw
  end

  def player_turn
    @message.player_message
    user_input = gets.chomp.downcase.to_sym
    check_column(user_input)
    @board.print_board
    #check win condition method
  end

  def comp_turn
    @message.computer_message
    choices = [:a, :b, :c, :d, :e, :f, :g]
    choices.shuffle!
    comp_input = choices[0]
    check_column(comp_input)
    @board.print_board
    #check comp_win_claus
  end

  def turn
    game.player_turn
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
      break
    else
      @message.invalid_input_message
      start
    end
  end
end
