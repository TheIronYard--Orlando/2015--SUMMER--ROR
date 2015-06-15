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

  def random_legal_move
    random_spaces = (0..2).map{|i| (0..2).map{|j| [i, j]}}.flatten(1).shuffle
    random_member_of(random_spaces)
  end

  def random_open_corner
    corners = [ [0, 0], [0, 2], [2, 0], [2, 2] ].shuffle
    random_member_of(corners)
  end

  def winning_move_for(marker)
    rows_columns_diagonals.detect do |spaces|
      @winning_space = two_and_one_from(marker, ' ', spaces)
    end
    if @winning_space
      # I'm looking for the exact empty space I just found above
      # the one with the same object_id
      # in #spaces, which is my flattened array of spaces on the board
      two_d_coordinates_for(@winning_space.object_id)
    end
  end

  def setup_winning_move_for(marker)
    potential_setup_opportunities = rows_columns_diagonals.select do |spaces|
      two_and_one_from(' ', marker, spaces)
    end
    if potential_setup_opportunities.length == 2
      object_id_arrays = potential_setup_opportunities.map do |spaces|
        spaces.select{|space| space == ' ' }.map{|space| space.object_id }
      end
      if setup_space_object_id = (object_id_arrays[0] & object_id_arrays[1])[0]
        two_d_coordinates_for(setup_space_object_id)
      end
    end
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

    def two_d_coordinates_for(space_object_id)
      index = spaces.index{|space| space.object_id == space_object_id }
      # now I change from that single-dimensional index back to the 2-d
      row = (index / 3) % 3
      column = index % 3
      [ row, column ]
    end

    def two_and_one_from(two_of_these, one_of_these, _spaces)
      _spaces.select{|space| space == two_of_these }.length == 2 &&
      _spaces.detect{|space| space == one_of_these }
    end

    def random_member_of(_spaces)
      legal = false
      until legal || _spaces.empty?
        row, column = _spaces.pop
        legal = legal_move?(row, column)
      end
      [row, column] if legal
    end

end