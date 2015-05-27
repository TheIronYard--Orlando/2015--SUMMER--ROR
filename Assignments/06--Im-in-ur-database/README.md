# 06-I'm In Ur Database
## Creatin Ur Objects

[The reference](http://knowyourmeme.com/memes/in-ur-base)

More practice with the same kind of thing we've been doing: 
* Write some HTML and ERB templates to show data to the user
* Write a server to 
  * handle requests to URLs 
  * populate instance variables, sometimes by making method calls to custom objects
  * take form data in the request and save it to a database <= this is the newest thing
  * return templates
* Write a Ruby class to define the custom objects and method calls used in the server

The change for today is using ActiveRecord subclasses and a database instead of plain old Ruby classes and
an ad hoc system of reading from csv or JSON. 

### For Everyone

When you make a form, make it not so ugly like mine. Use `label`, `fieldset`, and `legend` HTML tags. 

### Normal Mode

Make a folder called `active_record_iron_roster`. Put the `iron_roster.db` file in it. The contents of the file are described in
`iron_roster.csv`. Make a `roster_server.rb` file which can handle requests to the following URLs:
* /home (list everyone on the roster)
* /rails (list our class)
* /fee  (list those other people - you know, the ones we never talk to)
* /students (all of you together)
* /staff (me, David, Ben, Kyle, and The Pixie)
* /new_student_form (just what it sounds like)
* /create_student (add a student to the database using form data, and have a link back to /home)

For any page that displays multiple people, have a working link to each person's GitHub account (if the account exists).

You'll also need a `person.rb` file defining a Person class which inherits from ActiveRecord::Base and
makes a connection to the `iron_roster.db` database.

### Riding a Black Bear Mode

For every page which lists multiple people, display the information in an HTML table.

Delete the `iron_roster.db` file. Now recreate it (in its initial form) by writing and running code in `setup.rb` which takes the data from the `iron_roster.csv` file, parses it, and creates Person instances from it.

### Beast Mode

Make a folder called `active_record_cars`. Go back to assignment 3 and revise the back end to use a Car class that inherits from ActiveRecord::Base. 
In a `setup.rb` file, set up a `cars.db` database with a `cars` table which has the following columns:
* make
* model
* category (what the csv calls 'type')
* min_price
* highway_mpg

The `setup.rb` file should also use the `cars93.csv` data to populate the database. 

Your `server.rb` file should respond to at least the following URLs:
* /ford
* /mazda
* /sporty
* /luxury (cars w min price > $30k)
* /fuel_efficient (cars w mpg highway > 30)
* /domestic (US manufacturer)
* /foreign (not domestic)
* /new_car (show the form)
* /create_car (process the form)

-and if you want to expand that to cover all makes, models, and categories, that's cool, but leave a comment
explaining how that could break in the future.

### Nightmare Mode

Make a folder called `active_record_restaurants`. Revise the weekend assignment to cram all the JSON data into one table in a sqlite3 database. Populate the table
with the `restaurants.json` file. Adjust the Restaurant class to inherit from ActiveRecord::Base.

### Reading (For Everyone)

* [Ruby Style Guide](https://github.com/styleguide/ruby)
* [Tweak Sublime to Better Fit the Style Guide](https://www.sublimetext.com/docs/2/settings.html)
* [Preview of Tomorrow's Use of ActiveRecord](http://guides.rubyonrails.org/active_record_basics.html#crud-reading-and-writing-data)

### And a Bit of Code School

https://www.codeschool.com/courses/try-sql

