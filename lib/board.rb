require 'pp'

class Board


  attr_reader :hash_columns

  def initialize(hash_columns = {

    A: ['1', '1', '1', '1', '1', '1'],
    B: ['2', '2', '2', '2', '2', '2'],
    C: ['3', '3', '3', '3', '3', '3'],
    D: ['4', '4', '4', '4', '4', '4'],
    E: ['5', '5', '5', '5', '5', '5'],
    F: ['*', '*', '*', '*', '*', '*'],
    G: ['*', '*', '*', '*', '*', '*'],
    })
    @hash_columns = hash_columns
  end

  def welcome_message
    return "Welcome, please select a column (A-G)"
  end




  def print_board

    puts "A" "B" "C" "D" "E" "F" "G"
    a,b,c,d,e,f,g = @hash_columns.values.transpose
    p a.join(' ')
    p b.join(' ')
    p c.join(' ')
    p d.join(' ')
    p e.join(' ')
    p f.join(' ')
    p g.join(' ')
    # print hash_columns[:A][6]
    # print hash_columns[:B][6]
    # print hash_columns[:C][6]
    # print hash_columns[:D][6]
    # print hash_columns[:E][6]
    # print hash_columns[:F][6]
    # puts hash_columns[:G][6]
    # print hash_columns[:A][5]
    # print hash_columns[:B][5]
    # print hash_columns[:C][5]
    # print hash_columns[:D][5]
    # print hash_columns[:E][5]
    # print hash_columns[:F][5]
    # puts hash_columns[:G][5]
    # print hash_columns[:A][4]
    # print hash_columns[:B][4]
    # print hash_columns[:C][4]
    # print hash_columns[:D][4]
    # print hash_columns[:E][4]
    # print hash_columns[:F][4]
    # puts hash_columns[:G][4]
    # print hash_columns[:A][3]
    # print hash_columns[:B][3]
    # print hash_columns[:C][3]
    # print hash_columns[:D][3]
    # print hash_columns[:E][3]
    # print hash_columns[:F][3]
    # puts hash_columns[:G][3]
    # print hash_columns[:A][2]
    # print hash_columns[:B][2]
    # print hash_columns[:C][2]
    # print hash_columns[:D][2]
    # print hash_columns[:E][2]
    # print hash_columns[:F][2]
    # puts hash_columns[:G][2]
    # print hash_columns[:A][1]
    # print hash_columns[:B][1]
    # print hash_columns[:C][1]
    # print hash_columns[:D][1]
    # print hash_columns[:E][1]
    # print hash_columns[:F][1]
    # puts hash_columns[:G][1]
    # print hash_columns[:A][0]
    # print hash_columns[:B][0]
    # print hash_columns[:C][0]
    # print hash_columns[:D][0]
    # print hash_columns[:E][0]
    # print hash_columns[:F][0]
    # puts hash_columns[:G][0]
  end
  # hash_columns.map do |key|
  #   if key == :A ||
end


#   hash_columns[:A].map do |string|
#     p string
#   end
# end
