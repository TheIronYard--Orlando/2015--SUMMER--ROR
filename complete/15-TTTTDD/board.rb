class Board
  #attr_reader :spaces not needed bc I wrote an explicit method (see other notes)

  def initialize
    @spaces = Array.new(3) do |n| # this gives the nested array
                Array.new(3){' '} # but it breaks test_there_are_nine_spaces
              end                 # until I refactor the #spaces method as below
  end

  def spaces
    @spaces.flatten # so calling @board.spaces gives a flat array w 9 elements
  end

  def rows
    @spaces
  end

  def columns
    @spaces.transpose # see http://apidock.com/ruby/Array/transpose
  end

  def display
    display_rows.join(display_row_separator)
  end

  def place(marker, row, column)
    @spaces[row][column] = marker if legal_move?(row, column)
  end

  def has_3_in_a_row?(marker)
    rows_columns_diagonals.any?{|spaces| spaces.all?{|space| space == marker }} 
  end

  def filled?
    spaces.none?{|space| space == ' '}
  end

  def cannot_have_3_in_a_row?(marker)
    filled? && !has_3_in_a_row?(marker)
  end

  def legal_move?(row, column)
    (0..2).include?(row) &&
    (0..2).include?(column) &&
    @spaces[row][column] == ' '
  end
  
  private

    def diagonals
      [
       [ @spaces[0][0], @spaces[1][1], @spaces[2][2] ],
        [ @spaces[2][0], @spaces[1][1], @spaces[0][2] ]
      ]
    end

    def rows_columns_diagonals
      rows + columns + diagonals
    end

    def display_rows
      rows.map do |row|
        "#{row[0]}|#{row[1]}|#{row[2]}\n"
      end
    end

    def display_row_separator
      "-+-+-\n"
    end

end