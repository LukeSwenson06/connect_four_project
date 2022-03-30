class Board

  attr_reader :hash_columns

  def initialize(hash_columns = {
    A: ['*', '*', '*', '*', '*', '*'],
    B: ['*', '*', '*', '*', '*', '*'],
    C: ['*', '*', '*', '*', '*', '*'],
    D: ['*', '*', '*', '*', '*', '*'],
    E: ['*', '*', '*', '*', '*', '*'],
    F: ['*', '*', '*', '*', '*', '*'],
    G: ['*', '*', '*', '*', '*', '*'],
    })
    @hash_columns = hash_columns
  end

  def print_board
    puts "Welcome"
    puts "A" "B" "C" "D" "E" "F" "G"
    print hash_columns[:A][0]
    print hash_columns[:B][0]
    print hash_columns[:C][0]
    print hash_columns[:D][0]
    print hash_columns[:E][0]
    print hash_columns[:F][0]
    puts hash_columns[:G][0]
    print hash_columns[:A][1]
    print hash_columns[:B][1]
    print hash_columns[:C][1]
    print hash_columns[:D][1]
    print hash_columns[:E][1]
    print hash_columns[:F][1]
    puts hash_columns[:G][1]
    print hash_columns[:A][2]
    print hash_columns[:B][2]
    print hash_columns[:C][2]
    print hash_columns[:D][2]
    print hash_columns[:E][2]
    print hash_columns[:F][2]
    puts hash_columns[:G][2]
    print hash_columns[:A][3]
    print hash_columns[:B][3]
    print hash_columns[:C][3]
    print hash_columns[:D][3]
    print hash_columns[:E][3]
    print hash_columns[:F][3]
    puts hash_columns[:G][3]
    print hash_columns[:A][4]
    print hash_columns[:B][4]
    print hash_columns[:C][4]
    print hash_columns[:D][4]
    print hash_columns[:E][4]
    print hash_columns[:F][4]
    puts hash_columns[:G][4]
    print hash_columns[:A][5]
    print hash_columns[:B][5]
    print hash_columns[:C][5]
    print hash_columns[:D][5]
    print hash_columns[:E][5]
    print hash_columns[:F][5]
    puts hash_columns[:G][5]
    print hash_columns[:A][6]
    print hash_columns[:B][6]
    print hash_columns[:C][6]
    print hash_columns[:D][6]
    print hash_columns[:E][6]
    print hash_columns[:F][6]
    print hash_columns[:G][6]
  end
end
