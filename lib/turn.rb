class Turn
  attr_reader :player
  def initialize (player, computer)
    @player = player
  end

  def player_turn
      user_input = ui
    until ui[5] == ('.')
      ui = STDIN.gets.chomp.upcase
    end
    require'pry';binding.pry
    user_input.find do |piece|
        piece.sub('.','O')
      end
    end
  end
