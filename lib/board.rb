require 'pry'

class Board
  attr_reader :hash_columns

  def initialize(hash_columns = {

    a: ['.', '.', '.', '.', '.', '.'],
    b: ['.', '.', '.', '.', '.', '.'],
    c: ['.', '.', '.', '.', '.', '.'],
    d: ['.', '.', '.', '.', '.', '.'],
    e: ['.', '.', '.', '.', '.', '.'],
    f: ['.', '.', '.', '.', '.', '.'],
    g: ['.', '.', '.', '.', '.', '.']
    })
    @hash_columns = hash_columns

  end

  def print_board
    (row6,row5,row4,row3,row2,row1,) = @hash_columns.values.transpose

    puts "A B C D E F G"
    puts row1.join(' ')
    puts row2.join(' ')
    puts row3.join(' ')
    puts row4.join(' ')
    puts row5.join(' ')
    puts row6.join(' ')
  end
end
