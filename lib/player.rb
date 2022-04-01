require 'pry'

class Player
  attr_reader :name, :mark
  def initialize(name)
    @mark = 'X'
  end
end
