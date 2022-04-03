require './lib/board'
require './lib/player'
require './lib/turn'

describe 'Turn' do
  let(:player){Player.new("Vob", "X")}
  let(:computer){Player.new("AI", "O")}
  let(:turn){Turn.new(player, computer)}
  let(:board){Board.new}

  it 'exists' do
    expect(turn).to be_a(Turn)
  end

  it "can recieve input and check if column is full" do

    expect(turn.player_turn).to eq(1)
  end

end
