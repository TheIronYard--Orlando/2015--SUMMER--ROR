require 'webrick'
require './car'

server = WEBrick::HTTPServer.new(:Port => 8000)

server.mount_proc '/home' do |request, response|
  @filters = %w(compact sporty large Pontiac Mazda luxury)
  template = ERB.new(File.read('home.html.erb'))
  response.body = template.result
end

def result_from_template
  template = ERB.new(File.read('template.html.erb'))
  template.result
end

server.mount_proc '/compact' do |request, response|
  @filter = 'Compact'
  @cars = Car.compact # the Car class is available here bc it was required in line 2
                      # the class method Car.compact is used to populate the instance
                      # variable @cars, which is then used in the template.
  response.body = result_from_template
end

server.mount_proc '/sporty' do |request, response|
  @filter = 'Sporty'
  @cars = Car.sporty # following the same logic as in the above code block
  response.body = result_from_template
end

server.mount_proc '/large' do |request, response|
  @filter = 'Large'
  @cars = Car.large
  response.body = result_from_template
end

server.mount_proc '/Mazda' do |request, response|
  @filter = 'Mazda'
  @cars = Car.mazda
  response.body = result_from_template
end

server.mount_proc '/Pontiac' do |request, response|
  @filter = 'Pontiac'
  @cars = Car.pontiac
  response.body = result_from_template
end

server.mount_proc '/luxury' do |request, response|
  @filter = 'Luxury'
  @cars = Car.luxury
  response.body = result_from_template
end

server.mount_proc '/shutdown' do |request, response|
  response.body = "Server has been stopped"
  server.shutdown
end

server.start
