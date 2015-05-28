# TodoMVC (v1)

This assignment was taken from an open source JavaScript project, [TodoMVC](http://todomvc.com). 
The impetus behind that project was that there were new JavaScript frameworks springing into existence
almost weekly, and it was impossible to understand them all well enough to determine their relative strengths
and weaknesses. In order to provide a direct comparison of the myriad of JS frameworks, a todo list application
was built - four copies of the app, each performing identically, each built with a different JS framework. 
That was [almost exactly four years ago](https://github.com/tastejs/todomvc/commit/06a3d4a65db376b917c5bfd38989c60f6ee0fd6f#diff-d70ae7b16a386a69116b097e282af76b).
2383 commits later, the project hosts implementations of the todo list built with _67_ different JavaScript frameworks and libraries.

You already know enough Ruby to recreate most of the functionality of the todo list that has been implemented so
many times in project. 

# Application Specification

I have [ripped off](https://github.com/tastejs/todomvc/blob/master/app-spec.md) this short spec to help you create an awesome todo app. Make sure to not only read it, but also understand.

## Template Application

This folder contains the files you will need to build this app. GitHub turns out to be obnoxious about making 
repo subdirectories available for cloning, so I'll send you a copy of the folder in its current state on Slack.
Before implementing the app, I recommend you interact with some of the other apps to see how they're built and how they behave. 
Check out the [Backbone app](http://todomvc.com/examples/backbone) if you need a reference 
implementation. If something is unclear or could be improved, [let them know](https://github.com/tastejs/todomvc/issues).

## Structure

### Directory Structure

Recommended file structure:

```
index.html.erb
public/
├── index.css
├── app.js
todo_controller.rb
todo.rb
setup.rb
readme.md
```

### Code

Refer to the comments in the HTML for guidance on how the evaluated template should look in different circumstances. 

## Functionality

### No todos

When there are no todos, `#main` and `#footer` should be hidden.

### New todo

New todos are entered in the input at the top of the app. The input element should be focused when the page is loaded preferably using the `autofocus` input attribute. Pressing Enter creates the todo, appends it to the todo list and clears the input. Make sure to `.trim()` the input and then check that it's not empty before creating a new todo.

### Toggle all completeness

This checkbox sets all the todos to have the same complete status. If any or all todo items are incomplete,
clicking this checkbox will set all todos to be complete. If all todo items are complete, clicking this checkbox
will set all todos to be incomplete. 

### Item

A todo item has three possible interactions:

1. Clicking the checkbox toggles the todo's completeness status. A checkbox's parent `<li>` has the class `completed`
if and only if the todo is complete.

2. Clicking the `<a>` which displays the name of a todo activates editing mode for that todo.
If a todo is being edited, its `<li>` will have the class `editing`. 

3. Hovering over the todo shows the remove button (`.destroy`). and clicking a remove button for a todo destroys
that todo.

### Editing

When editing mode is activated for a todo, the other controls for that todo (the checkbox, edit link, and remove button)
will be hidden. In their place will be an input that contains the todo title, which should be focused when the page loads. 
Submitting the form to update the todo title should save the title and return the app to the main `todos` page.
No todo should have the `editing` class on the main `todos` page. 
Remove leading and trailing whitespace from the title (ie, change `"    this   "` to `"this"`).
If a todo is updated to have a blank title, the todo should be destroyed instead of saved. 

### Counter

Displays the number of active todos in a pluralized form. 
Make sure the number is wrapped by a `<strong>` tag. 
Also make sure to pluralize the `item` word correctly: `0 items`, `1 item`, `2 items`. Example: **2** items left

### Clear completed button

Destroys all completed todos when clicked. Should be hidden when there are no completed todos.

### Persistence

Your app should dynamically persist the todos to a database created by running `setup.rb`.  

### Routing

Every route (link URL and form action) that shows up in the template must be handled by a code block in 
`todos_controller.rb` (which is the server file for this app). Every route that renders a template uses 
the same template. Some routes redirect instead of rendering.

The following routes should be implemented: 

* `/todos` (all - default)
* `/active` 
* `/completed` 

When one of the three above routes is visited, the link to it should have the `selected` class.
Note that the only way to filter the list to show only the active or only the completed items is by
clicking the active or completed link, respectively. Making any other change should return the user to 
the full `/todos` page. *This is different from how the JS frameworks behave.* For instance, suppose you have
three todos, all incomplete (ie, active), and you click the `/active` link. You will still see all three todos.
Now if you click one todo's checkbox to mark it complete, you will be returned to the full `/todos` page and
*still* see all three todos, one marked complete, the other two not. If you try that same sequence in one of the 
JS implementations, when you visit the `/active` link and mark one todo complete, it will be hidden because it's
no longer active. 

You should also have routes to handle each of the actions described in the functionality section:
* creating a new todo
* toggling all completeness
* destroying all complete todos
* editing a particular todo (that is, showing the edit form for that todo)
* updating a particular todo (that is, saving the changes in its name to the database)
* toggling a particular todo's completeness
* destroying a particular todo

## Beast Mode

Add a category field to your todos table, along with the name and complete fields. Add a separate page listing a few
predetermined categories (IronYard, Personal, Relationship, whatever). A user should have a fully functioning todo
list for each of the categories you allow. A todo item created in the context of a list should be assigned to
the category of that list. Toggling all or destroying all complete items should also be scoped to the context of 
that list. There should be links to navigate from one list to another.

## Nightmare Mode

Add the capability to track due dates for each todo item. A user could enter a due date in the same text box as the 
name - for instance, "finish weekend project -- 05/31". Work through css classes to have visual indications for
which tasks are due in the future, due today, or overdue. Add a filtering link to sort todo items by due date.

If you want to really go nuts, see if you can do some light natural language processing and get away with entering
names like "finish weekend project -- Sunday" or "5 mi run -- tomorrow".
