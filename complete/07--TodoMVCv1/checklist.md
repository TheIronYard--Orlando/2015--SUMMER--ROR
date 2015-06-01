# Checklist 
## Or, How to Get Started on Each Task

Jumping right into writing code is not a good idea unless you know exactly what you're doing, and even
then it's questionable.

The thing to do instead is to look at the requirements for your code and for each one 
try to come up with a series of steps, in English, describing how to reach that requirement.
For any step that you can't translate directly into a few lines of Ruby code, break the step down
into sub-steps.

This will end up looking a lot like the checkbox lists that were on the first several assignments.

Herewith, the steps we came up with for TodoMVCv1, somewhat edited.

* [ ] Yak shaving: making the database
  * [ ] there has to be a `todos` table
    * [ ] the columns are going to be name or maybe title (a string), and a boolean for completeness
  * [ ]  write that in setup.rb and run it
* [ ] No todos: When there are no todos, `#main` and `#footer` should be hidden.
  * [ ] find `#main` and `#footer` in the HTML document
    * the `#` denotes an HTML id
  * [ ] identify that there are no todos
    * [ ] use an instance variable in the template to refer to the todos
    * [ ] assign instance variable @todos in the server
      * [ ] in a code block that responds to the `/todos` URL
      * [ ] to a call to Todo.all
  * [ ] hide `#main` and `#footer` in the erb file if no todos
    * [ ] set a condition in the erb file based on @todos.length
* [ ] New todo: enter in the input at the top of the app and save it
  * [X] the input should be focused when the page is loaded with the HTML autofocus attribute
  * [ ] pressing enter should create the todo
    * [ ] pressing enter should submit the form containing the input
      * [ ] the form should have a method (POST)
      * [ ] the form should have an action (create_todo)
      * [ ] each form input should have a `name` attribute
        * [ ] each input`s `name` attribute should have a value that matches a column in the `todos` table
    * [ ] the form submission should be handled by the server
      * [ ] there should be a server.mount_proc code block which handles the URL action `/create_todo`
      * [ ] that code block should create a todo
        * [ ] code block should read the submitted form data
          * in request.query
        * [ ] create a todo with the submitted form data in request.query
          * [ ] trim the input
            * remove whitespace - "   this  " => "this"
              * access the `name` in request.query
              * remove whitespace on it
              * look up method to do that...
              * [ ] request.query["name"].strip!
          * [ ] make sure todo name is not blank before creating
            * [ ] check request.query["name"].length > 0
          * [ ] Todo.create(request.query)
      * [ ] after creating the todo, redirect back to URL `\todos`
* [ ] Display todos: all created todos should be displayed in a list
  * [ ] iterate over @todos in template
  * [ ] display appropriate information for each todo
    * [ ] display name of each todo
    * [ ] use erb to display todo.name
* [ ] Toggle all completeness: set all todos to be either all complete or all incomplete
  * [ ] clicking the checkbox should toggle all the todos
    * [ ] clicking the checkbox should submit the form containing the checkbox
      * [ ] the form should have a method (POST)
      * [ ] the form should have an action (toggle_all)
    * [ ] the form submission should be handled by the server
      * [ ] there should be a server.mount_proc code block which handles the URL action `/toggle_all`
      * [ ] that code block should toggle all the todos
        * [ ] call a method on the Todo class, .toggle_all
          * [ ] write Todo.toggle_all
            * [ ] as first attempt, have it update all the todos to have complete: true
            * [ ] then add in branching logic
              * [ ] if any todos are incomplete, update all to be complete
              * [ ] otherwise update all to be incomplete
* [ ] Toggle one complete: set a single todo to be complete or incomplete    
  * [ ] clicking the checkbox should toggle the todo's completeness status
    * [ ] clicking the checkbox should submit the form containing the checkbox
      * [ ] the form should have a method (POST)
      * [ ] the form should have an action (todo/:id/toggle)
        * :id means the id of that specific todo
    * [ ] the form submission should be handled by the server
      * [ ] there should be a Servlet class that handles POST requests to /todo/:id/toggle
        * can't be a server.mount_proc block because of the need to extract the id from the URL
        * [ ] the do_POST method in the Servlet should toggle the todo status
          * [ ] the method should extract the :id from the request
            * [ ] request.path =~ /todo/\/(\d+)/toggle/
          * [ ] use the id to find a todo in the db
          * [ ] toggle that todo's complete status
          * [ ] redirect to the `\todos` URL
 * [ ] A checkbox's parent `<li>` has the class completed if and only if the todo is complete 
   * [ ] set a conditional in erb
* [ ] Display edit form: Clicking the `<a>` which displays the name of a todo activates editing mode for that todo
  * [ ] clicking the `<a>` should visit a URL
    * [ ] an `<a>` tag needs an href
    * [ ] the href should identify the todo, and the editing state
      * /todo/:id/edit
    * links use GET requests
  * [ ] the URL should be handled by the server
      * [ ] there should be a Servlet class that handles GET requests to /todo/:id/edit
        * can't be a server.mount_proc block because of the need to extract the id from the URL
        * [ ] the do_GET method in the Servlet should identify which todo is being edited
          * [ ] the method should extract the :id from the request
            * [ ] request.path =~ /todo/\/(\d+)/toggle/
          * [ ] use the id to find a todo in the db
          * [ ] distinguish between that todo and all the rest
            * [ ] set an instance variable, or an attribute on the todo
        * [ ] the method should render the template
 * [ ] if a todo is being edited, its `<li>` will have the class editing.
   * [ ] set a css class in erb conditional on the instance variable or todo attribute 
   
...and so on.
