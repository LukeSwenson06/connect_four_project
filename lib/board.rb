class Board

  attr_reader :hash_columns

  def initialize(hash_columns = {"A" => [], "B" => [], "C" => [], "D" => [], "E" => [], "F" => [] , "G" => []})
    @hash_columns = hash_columns
  end
end
