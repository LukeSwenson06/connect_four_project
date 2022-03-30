require 'rspec'
require './lib/board'
require 'pry'

describe Board do
  let(:board){Board.new}

  it 'exists' do
    expect(board).to be_a(Board)
  end

  it 'it has an hash' do
  expect(board.hash_columns).to eq({
      A: ['*', '*', '*', '*', '*', '*'],
      B: ['*', '*', '*', '*', '*', '*'],
      C: ['*', '*', '*', '*', '*', '*'],
      D: ['*', '*', '*', '*', '*', '*'],
      E: ['*', '*', '*', '*', '*', '*'],
      F: ['*', '*', '*', '*', '*', '*'],
      G: ['*', '*', '*', '*', '*', '*'],
})
binding.pry
end

  xit "will print the board" do
  expect(board.print_board).to eq({
    A: ['*', '*', '*', '*', '*', '*'],
    B: ['*', '*', '*', '*', '*', '*'],
    C: ['*', '*', '*', '*', '*', '*'],
    D: ['*', '*', '*', '*', '*', '*'],
    E: ['*', '*', '*', '*', '*', '*'],
    F: ['*', '*', '*', '*', '*', '*'],
    G: ['*', '*', '*', '*', '*', '*']
  })
  end
end
