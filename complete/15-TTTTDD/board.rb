class Board
  attr_reader :spaces

  def initialize
    @spaces = Array.new(9){|n| ' ' } # it won't be a flat array, but this is the 
                                 # simplest way to get the test to pass.
  end
end