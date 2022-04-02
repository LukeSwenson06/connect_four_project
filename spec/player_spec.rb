require 'rspec'
require './lib/board'
require './lib/player'
require 'pry'

describe Player do
  let(:player){Player.new("Tom", "O")}
  let(:player2){Player.new}

  it 'exists' do
    expect(player).to be_an_instance_of Player
  end

  it 'player has attributes' do
    expect(player.name).to eq "Tom"
    expect(player.piece).to eq "O"
  end

end
