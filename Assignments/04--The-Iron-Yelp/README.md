# The Iron Yelp

You've had some practice with the fundamentals of the job:
* Get data from somewhere
* Parse it into a form Ruby can understand
  * (While making sure _you_ understand it too)
* Set up a server that interprets an incoming _request_ (like "/action") as a need for some of the data (like 'all the action movies') to be returned in _response_
* Make HTML/ERB templates that can display different collections of data

You've also had a little bit of practice writing classes and methods. Now, you get some more. 

In this folder you'll find a file called `restaurants.json`, which has information about local eateries. Your job is to make a website that can show information about those restaurants. Specifically, write
* All of the following in a folder called `the_iron_yelp`
  * which you will add to your `TIY-Assignments` repository
* A `home.html` home page for the site
* A `restaurant.rb` file describing a `Restaurant` class that can be initialized with information about a particular restaurant
  * _instance methods_ for `Restaurant` (see [Instance vs Class Methods](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR/blob/master/Notes/Week1/instance_vs_class_methods.md) in the notes folder. Seriously. Read that before you go further) to display information about any specific restaurant
  * You read [Instance vs Class Methods](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR/blob/master/Notes/Week1/instance_vs_class_methods.md), right?
  * _class methods_ on `Restaurant` (ditto) to get collections of restaurant objects
* A `server.rb` file that can use the _class methods_ from `Restaurant` to get collections ready to be displayed on a `restaurants.html.erb` template
  * For example, when a person visits the site at `/restaurants`, the server should invoke the class method `Restaurant.all` to get all of the restaurants
  * Other ways to group the restaurants include filtering by cuisine (ie `/burgers` or `/vegetarian` etc), sorting by number of reviews or highest average review, cheap places (you define what counts as cheap)
  * You should also be able to select a single restaurant at a time, say the most popular one, and display lots of info on it in a `restaurant.html.erb` template
* A `restaurants.html.erb` template to display information on one restaurant at a time
* Also, copy the `restaurants.json` file from this folder and include it in yours

### The Data

I have five restaurants in the database. That's enough for a proof of concept, but it would be better to have more data. Fortunately I have you guys! (Note: IronYard corporate policy requires me to apologize if anyone feels bothered or othered or otherwise marginalized or excluded by my use of the generic term 'guys' to mean people of any and all genders.) I got the data from Yelp, by looking for restaurants in Orlando, specifically the downtown/central business district. All the categories I needed were there, except for id and ratings. The ids I just made up as a sequence of integers. I fudged the ratings by making random arrays in irb:
```
Array.new(20){|n| 9 + rand(2)} 
#this produces an array with 20 numbers in it, each of them at least 9, 
#plus either 0, 1, or 2 (bc rand returns an integer from 0 up to the argument it gets)
```
As part of the assignment, get data for another restaurant from the list, add it to `restaurants.json`, get it into your `TIY-Assignments` repo, and submit a _pull request_ back to this repo so I can add your contribution to the file. Coordinate with each other to make sure nobody duplicates restaurants. *If your pull request can't be merged automatically, fix it.* Let me know (with an "at-mention") once your PR can be merged, and I'll merge it.  

Everything up to this point is part of the assignment requirements. For those looking to go further....

## Beast Mode

* Add an _instance method_ to restaurant to display the hours it's open today (for whatever "today" is)
* Add a little CSS to make the site look less awful
* Make a page that lists places that are open right now
* Display the average rating of each place
* Use CSS to display the average rating as some number of stars
* Figure out how to incorporate how far each restaurant is from The Iron Yard, and have a page to list the restaurants sorted by walking distance

## Nightmare Mode

There's a gem on GitHub (https://github.com/yoshida-eth0/ruby-webrick-route_servlet) that lets you add a form of regular expression to the URLs WEBrick can respond to. For instance, `restaurant/:id` could be added as a URL, and when a site visitor went to `restaurant/1`, the `request` block parameter would have `request.params[:id]` equal to 1. Then you could use that 1 (in a class method on `Restaurant`) to detect the restaurant that has an id of 1, and display it in `restaurant.html.erb`. Once you get the hang of that, you can use other parameters in the URLs fairly easily, like `/min_rating/:n` or `/price_level/:n` etc.

Separate from that idea, you could add a page with a form that a user could input data about a restaurant, and have a separate server action that would take that data and add it into the `restaurants.json` file. Not gonna lie, that would be hard.

The next step up from that would be to make it possible to delete the information on an existing restaurant from the json file.

If you really want to go crazy, make it possible to edit an existing restaurant's data and change the contents of `restaurants.json` in response to user input.  
