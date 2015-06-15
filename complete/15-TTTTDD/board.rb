class Board
  attr_reader :spaces

  def initialize
    @spaces = [] # it won't be an empty array, but this is the simplest way to get
                 # the test to pass.
  end
end