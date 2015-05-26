require "webrick" # 1. tells Ruby to read the webrick library from the standard library, so this file
                  # can use WEBrick
require "./car"   # 2. tells Ruby to read the car.rb file, which *probably* defines a Car class, from
                  # the directory you're in

server = WEBrick::HTTPServer.new(:Port => 8000) # 3. assign variable server to an instance of WEBrick::HTTPServer
                                                # giving the call to .new an argument of :Port => 8000
                                                # the 8000 shows up in the domain of the running server - localhost:8000

server.mount_proc "/home" do |request, response| # 4. takes that server variable and makes a method call
                                                 # which connects a URL "/home" to the contents of the code block
                                                 # the code block is executed when someone visits "localhost:8000/home"
  template = ERB.new(File.read "home.html.erb")  # 5. 1st the file 'home.html.erb' is read (by File.read)
                                                 # then a new instance of ERB is initialized using the read file
                                                 # and that instance is assigned to a local variable, template
  response.body = template.result
end

server.mount_proc "/all" do |request, response|
  @cars = Car.all # 6. apparently in the Car class there is a class method called .all, and its return value is
  # being assigned to @cars instance variable. @cars is almost certainly being used in the template.html.erb file.
  template = ERB.new(File.read "template.html.erb")
  response.body = template.result
end

server.mount_proc "/domestic" do |request, response|
  @cars = Car.domestic # 7. apparently in the Car class there is a class method called .domestic, and it probably 
  # returns a collection of domestic cars somehow, and assigns the collection to an instance variable @cars.
  template = ERB.new(File.read "template.html.erb")
end

server.mount_proc "/shutdown" do |request, response|
  response.body = "Bye"
  server.shutdown # 8. calling instance method #shutdown on server (which is an instance of WEBrick::HTTPServer, 
                  # which stops the server.
end

server.start # 9. calling instance method #start on server, to get it running so it can respond to requests in the browser.
