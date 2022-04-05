require 'rspec'
require './lib/messages'
require './lib/game'
require 'pry'

describe Game do
  let(:game){Game.new}

  it "exists" do
    expect(game).to be_a(Game)
  end

  it 'can execute player_win' do
    expect(game).to respond_to(:player_win)
  end

  xit 'can execute computer_win' do
    expect(game).to respond_to(:computer_win)
  end

  xit 'can place a piece' do
    game.place_piece(:a)
    expect(game.board.hash_columns[:a][0]).to eq('X')
    game.place_piece(:a)
    expect(game.board.hash_columns[:a][1]).to eq('X')

  end

  xit 'can determine a vertical win' do
    game.place_piece(:a)
    game.place_piece(:a)
    game.place_piece(:a)
    game.place_piece(:a)
    game.player_vertical_win_clause(:a)
  end

  xit 'can determine a horizontal win' do
    game.place_piece(:a)
    game.place_piece(:b)
    game.place_piece(:c)
    game.place_piece(:d)
    game.player_horizontal_win_clause
  end

  it 'can be a draw' do
    game.player_place_piece(:a)
    game.player_place_piece(:b)
    game.player_place_piece(:c)
    game.player_place_piece(:d)
    game.player_place_piece(:e)
    game.player_place_piece(:f)
    game.player_place_piece(:g)
    game.player_place_piece(:a)
    game.player_place_piece(:b)
    game.player_place_piece(:c)
    game.player_place_piece(:d)
    game.player_place_piece(:e)
    game.player_place_piece(:f)
    game.player_place_piece(:g)
    game.player_place_piece(:a)
    game.player_place_piece(:b)
    game.player_place_piece(:c)
    game.player_place_piece(:d)
    game.player_place_piece(:e)
    game.player_place_piece(:f)
    game.player_place_piece(:g)
    game.player_place_piece(:a)
    game.player_place_piece(:b)
    game.player_place_piece(:c)
    game.player_place_piece(:d)
    game.player_place_piece(:e)
    game.player_place_piece(:f)
    game.player_place_piece(:g)
    game.player_place_piece(:a)
    game.player_place_piece(:b)
    game.player_place_piece(:c)
    game.player_place_piece(:d)
    game.player_place_piece(:e)
    game.player_place_piece(:f)
    game.player_place_piece(:g)
    game.player_place_piece(:a)
    game.player_place_piece(:b)
    game.player_place_piece(:c)
    game.player_place_piece(:d)
    game.player_place_piece(:e)
    game.player_place_piece(:f)
    game.player_place_piece(:g)
    expect(game.draw).to eq("Its a draw!")
  end

end
