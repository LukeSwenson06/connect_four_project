require 'rspec'
require './lib/messages'
require './lib/game'
require './lib/board'
require 'pry'

describe Game do
  let(:game){Game.new}

  xit "exists" do
    expect(game).to be_a(Game)
  end

  xit 'can execute player_win' do
    expect(game).to respond_to(:player_win)
  end

  xit 'can execute computer_win' do
    expect(game).to respond_to(:computer_win)
  end

  xit 'can place a piece' do
    game.player_place_piece(:a)
    expect(game.board.hash_columns[:a][0]).to eq('X')
    game.player_place_piece(:a)
    expect(game.board.hash_columns[:a][1]).to eq('X')

  end

  xit 'can determine a players vertical win' do
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_vertical_win_clause(:a)
  end

  xit 'can determine a players horizontal win' do
    game.player_place_piece(:a)
    game.player_place_piece(:b)
    game.player_place_piece(:c)
    game.player_place_piece(:d)
    game.player_horizontal_win_clause
  end

  xit 'can be a draw' do
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

  xit "can do 5 in a row horizontal win" do
  # require "pry";binding.pry
  game.player_place_piece(:a)
  game.player_place_piece(:b)
  game.player_place_piece(:d)
  game.player_place_piece(:e)
  expect(game.board.hash_columns[:a][0]).to eq('X')
  expect(game.board.hash_columns[:b][0]).to eq('X')
  expect(game.board.hash_columns[:d][0]).to eq('X')
  expect(game.board.hash_columns[:e][0]).to eq('X')
  game.player_place_piece(:c)
  expect(game.player_horizontal_win_clause).to eq(true)
  end

  xit "can have vertical win on index position 6" do
    game.player_place_piece(:a)
    game.comp_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    expect(game.player_vertical_win_clause(:a)).to eq(game.player_win)
  end
  it "test" do
    game.comp_place_piece(:a)
    game.comp_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_place_piece(:a)
    game.player_vertical_win_clause(:a)

  end


end
