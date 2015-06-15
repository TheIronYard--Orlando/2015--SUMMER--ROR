class Car
  attr_reader :name, :gas_mileage, :horsepower, :n_cylinders, :weight, :quarter_mile_time
# a Car can be initialized with name, gas_mileage, n_cylinders, 
# horsepower, weight, and quarter_mile_time
  def initialize(name, gas_mileage, n_cylinders, 
                 horsepower, weight, quarter_mile_time)
    @name = name.gsub(/"/,'')
    @gas_mileage = gas_mileage.to_f
    @n_cylinders = n_cylinders.to_i
    @horsepower = horsepower.to_i
    @weight = weight.to_f
    @quarter_mile_time = quarter_mile_time.to_f
  end

  # Opens the mtcars.csv file and uses the data to create an array of 37 cars
  # the first two lines of that file are
  #             mpg   cyl disp  hp  drat  wt    qsec  vs  am  gear  carb
  # Mazda RX4   21    6   160   110 3.9   2.62  16.46 0   1   4     4
  def self.all
    raw_data = IO.readlines('mtcars.csv') #read into an array of lines, call it raw_data
    raw_data.shift # remove header line
    cars = raw_data.map do |line| # change from the raw data array to an array of Car instances
      cells = line.split(',') # a line in a csv file is read as a string w commas in it
                              # make that line into an array by splitting at the commas
      Car.new(cells[0], # that's the cell with the name
              cells[1], # that's the cell with the mpg
              cells[2], # that's the cell with the cyl
              cells[4], # that's the cell with the hp
              cells[6], # that's the cell with the weight
              cells[7]) # that's the cell with the quarter mile time (qsec)
    end
  end

  def land_yacht?
    weight > 3.5 # weights in the csv file are decimals like that, suggesting the
                 # number before the decimal is 1000s of pounds
  end

  # Prints a "salesman name" for each car:
  # if the car has more than 200hp, the salesman name should include the word "powerful"
  # if the car gets better than 25mpg, the salesman name should include the phrase "fuel efficient"
  # the salesman name should always include the normal name
  # for example, "the powerful Camaro Z28", "the fuel efficient Fiat X1-9", "the Datsun 710"
  
  def salesman_name
    "the #{powerful}#{fuel_efficient}#{name}" # common pattern to write smaller methods
                                          # like powerful and fuel_efficient
                                          # and refer to them in a main method
                                          # rather than having lots of logic in one method
  end

  def powerful
    'powerful ' if horsepower > 200 # if horsepower < 200, this returns nil, and 
                                    # the interpolated value of nil in salesman_name
                                    # will be empty string
  end

  def fuel_efficient
    'fuel efficient ' if gas_mileage > 25
  end

  def to_s # to make Car objects display nicely
    salesman_name
  end
end

cars = Car.all #invoke the class method to turn the data in the csv file into Car objects
# Identifies the car with the best gas mileage
best_mileage_car = cars.max_by{|car| car.gas_mileage }
puts "the car with the best mileage is #{best_mileage_car}"

# Lists the "land yachts" (cars with weight over 3500 lbs)
puts "the following cars are the 'land yachts' (weight over 3500lbs):"
cars.select{|car| car.land_yacht? }.each{|big_car| puts big_car }

# BEAST MODE
# Find the quickest land yacht
puts "the quickest land yacht is #{cars.select{|car| car.land_yacht? }
      .max_by{|car| car.quarter_mile_time }}"
# Create an array of 3 cars, including the cars with the best mileage 
# among 4-cylinder, 6-cylinder, and 8-cylinder vehicles.
cars_grouped_by_n_cyl = cars.group_by{|car| car.n_cylinders }
best_mpg_by_cyl = cars_grouped_by_n_cyl.map{|n_cyl, cars| cars.max_by{|car| car.gas_mileage }}
puts "the best 4-, 6-, and 8-cylinder vehicles are:"
best_mpg_by_cyl.each{|car| puts car }