require 'webrick'
require './todo'
 
server = WEBrick::HTTPServer.new(Port: 8000, DocumentRoot: "./public")

server.mount_proc "/todos" do |request, response|
  @todos = Todo.all
  @all_todos_count = Todo.count
  @flag = 'all'
  # populate some instance variables in here
  template = ERB.new(File.read "index.html.erb")
  response.body = template.result
end

server.mount_proc "/active" do |request, response|
  @todos = Todo.where(complete: false)
  @all_todos_count = Todo.count
  @flag = 'active'
  template = ERB.new(File.read "index.html.erb")
  response.body = template.result
end

server.mount_proc "/completed" do |request, response|
  @todos = Todo.where(complete: true)
  @all_todos_count = Todo.count
  @flag = 'completed'
  template = ERB.new(File.read "index.html.erb")
  response.body = template.result
end

# there are several URLs that must be handled

server.mount_proc "/create_todo" do |request, response|
  # handle data coming in from the form
  #response.body = "#{request.query}"
  hash = request.query
  hash["name"].strip!
  if hash["name"].length > 0 #if something was typed
    Todo.create(hash) #then save the todo
  end
  response.set_redirect WEBrick::HTTPStatus::MovedPermanently, "/todos"
  # the above line saves you from needing to make a separate template to show a new todo by itself
  # in general, POST requests from forms should be redirected that way
end

server.mount_proc "/toggle_all" do |request, response|
  #here is where we want to toggle all the todos.
  Todo.toggle_all # let the Todo class figure it out.
  #that means I need to write a class method .toggle_all
  response.set_redirect WEBrick::HTTPStatus::MovedPermanently, "/todos"
end

server.mount_proc "/clear_completed" do |request, response|
  Todo.clear_completed #let the Todo class figure it out
  response.set_redirect WEBrick::HTTPStatus::MovedPermanently, "/todos"
end

server.mount_proc "/shutdown" do |request, response|
  response.body = "Bye"
  server.shutdown
end

# The above code takes care of all the cases where you know *exactly* what the URL is in advance.

# The below code is necessary for cases where you know only a pattern, which you can match
# with a regular expression
# the pattern this class handles - which your link URLs and form actions should also match -
# is to start the URL with "/todo/" followed by an integer followed by another string
# like "/todo/11/whatever"
# the reason it matches that pattern is the call to server.mount "/todo/", MyServlet
# which comes after the MyServlet class is defined

class TodoServlet < WEBrick::HTTPServlet::AbstractServlet

  def do_GET(request, response)
    # this method handles GET requests to your server like "/todo/4/edit" - 
    # really any GET request that has "/todo/" in it 
    # you will need to add some code so the template displays properly
    # and lets you edit a single todo
    @todos = Todo.all
    
    request.path =~ /todo\/(\d+)/
    id = $1.to_i
    # and use it to get a todo out of the collection
    todo = @todos.detect{|_todo| _todo.id == id }
    # I want to distinguish this todo from the others
    # I'll stick a new attribute on it
    todo.being_edited = true #need to set this up in todo.rb
    template = ERB.new(File.read "index.html.erb")
    response.body = template.result(binding) # binding is required here.
  end

  def do_POST(request, response)
    # this method handles any POST request that matches a pattern like "/todo/5/update" or "/todo/47/destroy" etc
    # note that there are two aspects of that pattern that change; you'll need to write code to handle 
    # requests to do several different kinds of things to your todo items
    # remember how to get back to the main page after updating or destroying your todo
    # this method will have to pull an id out of a URL
    request.path =~ /todo\/(\d+)/
    id = $1
    # and use it to get a todo out of the db
    todo = Todo.find(id)
    if request.path =~ /toggle/
      # right now, we just want to toggle complete
      todo.toggle!(:complete)
    elsif request.path =~ /destroy/
      todo.destroy
    else
      # if I get here, I'm updating the name
      #If a todo is updated to have a blank 
      #title, the todo should be destroyed instead of saved. 
      hash = request.query
      hash["name"].strip!
      if hash["name"].length > 0 #if something was typed
        todo.update(hash) #then save the todo
      else
        todo.destroy
      end
    end
    # and then send the user back to the main page
    response.set_redirect WEBrick::HTTPStatus::MovedPermanently, "/todos"

  end

end
server.mount "/todo/", TodoServlet # this catches requests to the server that begin with "/todo/" and
                                 # has the MyServlet class deal with them
server.start
