require "webrick" # 1.
require "./car"   # 2.

server = WEBrick::HTTPServer.new(:Port => 8000) # 3.

server.mount_proc "/home" do |request, response| # 4.
  template = ERB.new(File.read "home.html.erb")  # 5.
  response.body = template.result
end

server.mount_proc "/all" do |request, response|
  @cars = Car.all # 6. apparently in the Car class there is a ____ method called ___, and __________
  template = ERB.new(File.read "template.html.erb")
  response.body = template.result
end

server.mount_proc "/domestic" do |request, response|
  @cars = Car.domestic # 7. apparently in the Car class there is a _____ method called ____, and _________
  template = ERB.new(File.read "template.html.erb")
end

server.mount_proc "/shutdown" do |request, response|
  response.body = "Bye"
  server.shutdown # 8.
end

server.start # 9.
