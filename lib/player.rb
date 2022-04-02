require 'pry'

class Player

  attr_reader :name, :piece

  def initialize(name, piece)
    @name = name
    @piece = piece
  end
end

#the name classs is defining who the player is by identifying
#there pieces that they will use
