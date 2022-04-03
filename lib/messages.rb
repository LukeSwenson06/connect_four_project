class Message

  def welcome_message
    puts "Welcome to Connect4! Please type 'start' to begin, please type 'exit'
    to exit"
  end

  def player_message
    puts "Please select a column (A-G) to place your piece."
  end

  def error_message
    puts "Invalid column, please select column (A-G)."
  end

  def computer_message
    puts "Computer is now making their move!"
  end

  def invalid_input_message
    puts "Invalid input, Please type 'start' to begin, please type 'exit'
    to exit."
end
