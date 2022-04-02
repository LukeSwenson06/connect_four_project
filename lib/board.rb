require 'pry'

class Board


  attr_reader :hash_columns

  def initialize(hash_columns = {

    A: ['.', '.', '.', '.', '.', '.'],
    B: ['.', '.', '.', '.', '.', '.'],
    C: ['.', '.', '.', '.', '.', '.'],
    D: ['.', '.', '.', '.', '.', '.'],
    E: ['.', '.', '.', '.', '.', '.'],
    F: ['.', '.', '.', '.', '.', '.'],
    G: ['.', '.', '.', '.', '.', '.']
    })
    @hash_columns = hash_columns
  end

  def welcome_message
    return "Welcome, please select a column (A-G)"
  end


  def print_board
    (row6,row5,row4,row3,row2,row1,) = @hash_columns.values.transpose


    puts " A B C D E F G"
    p row6.join(' ')
    p row5.join(' ')
    p row4.join(' ')
    p row3.join(' ')
    p row2.join(' ')
    p row1.join(' ')
  end
end
