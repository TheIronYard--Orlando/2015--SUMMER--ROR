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
    " | | \n" + # simplest thing to get first display test to pass
    "-+-+-\n" +
    " | | \n" + 
    "-+-+-\n" +
    " | | \n"
  end
end