class Turn
  attr_reader :player
  def initialize (player, computer)
    @player = player
  end

  def player_turn
    user_input = []
    ui = STDIN.gets.chomp.upcase.to_sym
  if @hash_columns[ui][5] == ('.')
    user_input << ui
  end

    # user_input.find do |piece|
    #     piece.sub('.','O')
  end
end

# cd turing/1Module/projects/connect_four_project/
