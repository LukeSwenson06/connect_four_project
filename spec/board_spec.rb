require 'rspec'
require './lib/board'
require 'pry'

describe Board do
  let(:board){Board.new}

  it 'exists' do
    expect(board).to be_a(Board)
      binding.pry
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

  xit 'can print welcome message' do
    expect(board.welcome_message).to eq("Welcome, please select a column (A-G)")
  end


  xit "will print the board" do
      # binding.pry
  expect(board).to respond_to(:print_board)
  end

  it "can recieve user input" do
    board.user_input

    expect(board.user_input).to eq([STDIN.gets.chomp.upcase.to_sym])
  end
end
