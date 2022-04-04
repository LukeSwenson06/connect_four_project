require 'rspec'
require './lib/board'
require 'pry'

describe Board do
  let(:board){Board.new}

  it 'exists' do
    expect(board).to be_a(Board)

  end

  xit 'it has an hash' do
  expect(board.hash_columns).to eq({
      A: ['.', '.', '.', '.', '.', '.'],
      B: ['.', '.', '.', '.', '.', '.'],
      C: ['.', '.', '.', '.', '.', '.'],
      D: ['.', '.', '.', '.', '.', '.'],
      E: ['.', '.', '.', '.', '.', '.'],
      F: ['.', '.', '.', '.', '.', '.'],
      G: ['.', '.', '.', '.', '.', '.'],})
  end

  it "will print the board" do
  expect(board).to respond_to(:print_board)
  end
end
