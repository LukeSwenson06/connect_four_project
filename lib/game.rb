require './lib/board'

class Game

  def initialize
    @board = Board.new
    #@message = Message.new

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
    #enter letter message
    user_input = gets.chomp.downcase.to_sym
    check_column(user_input)
    @board.print_board
    #check win condition method
  end

  def comp_turn
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
       p 'error select column a-g'#to do put in error message
       player_turn
    end

  end

  def place_piece(user_input)
    index = @board.hash_columns[user_input].find_index(".")
    @board.hash_columns[user_input][index] = "X"
  end

  def start
      #welcome message
      #prompt for begin input
      #if begin input == 'starting phrase'
        #begin turn loop
      #else if input == 'exit'
        #bail out of the game
      #else
        #invalid input message
        #loop back to start
  end

end










end
