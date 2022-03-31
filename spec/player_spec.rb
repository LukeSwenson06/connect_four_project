require 'rspec'
require './lib/board'
require 'pry'

describe Player do
  let(:player1){player.new}
  let(:player2){player.new}

  it 'exists' do
    expect(player1).to be_an_instance_of(PLayer)
  end

  

end
