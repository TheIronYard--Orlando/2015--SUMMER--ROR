class Car

  attr_reader :manufacturer, :model, :type, :price

  def initialize(manufacturer, model, type, price)
    @manufacturer = manufacturer
    @model = model
    @type = type
    @price = price
  end

  def self.all
    raw_data = IO.readlines('Cars93.csv') #read into an array of lines, call it raw_data
    raw_data.shift # remove header line
    cars = raw_data.map do |line| # change from the raw data array to an array of Car instances
      line.gsub!(/"/,'') # remove all quote characters
      cells = line.split(',') # a line in a csv file is read as a string w commas in it
                              # make that line into an array by splitting at the commas
      Car.new(cells[1], # that's the cell with the manufacturer
              cells[2], # that's the cell with the model
              cells[3], # that's the cell with the type
              (cells[5].to_f * 1000).to_i) # that's the cell with the price
    end 
  end

  def self.compact
    all.select{|car| car.compact? } # let the .all method handle the data parsing
                                    # then select using the instance method #compact?
                                    # note that I can use all inside this class method
                                    # and it's understood to be the class method .all 
  end 

  def self.sporty
    all.select{|car| car.sporty? }
  end

  def self.large
    all.select{|car| car.large? }
  end

  def self.mazda
    all.select{|car| car.mazda? }
  end

  def self.pontiac
    all.select { |car| car.pontiac? }
  end

  def self.luxury
    all.select { |car| car.luxury? }
  end

  def compact?
    type == 'Compact'
  end

  def sporty?
    type == 'Sporty'
  end

  def large?
    type == 'Large'
  end

  def mazda?
    manufacturer == 'Mazda'
  end

  def pontiac?
    manufacturer == 'Pontiac'
  end

  def luxury?
    price > 30_000
  end
end