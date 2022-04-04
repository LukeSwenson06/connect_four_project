require 'rspec'
require './lib/messages'
require './lib/game'
require 'pry'

describe Game do
  let(:game){Game.new}

  it "exists" do
    expect(game).to be_a(Game)
    # expect(@board).to be_a(Board)
    # expect(@message).to be_a(Message)

  end

  it 'can execute player_win' do
    expect(game).to respond_to(:player_win)
  end

  it 'can execute computer_win' do
    expect(game).to respond_to(:computer_win)
  end

end
