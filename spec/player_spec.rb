require 'rspec'
require './lib/board'
require './lib/player'
require 'pry'

describe Player do
  let(:player1){Player.new("Tom")}
  # let(:player2){Player.new}

  it 'exists' do
    expect(player1).to be_an_instance_of(Player)
  end

  xit 'can only recieve a-g inputs' do
    player1.recieve_move
   expect(player1.recieve_move).to eq(1)
  end

end
