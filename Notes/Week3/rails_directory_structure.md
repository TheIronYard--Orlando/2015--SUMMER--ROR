# Rails Project Directory Structure

A lot of files and folders get created as part of a new Rails app. You'll spend the vast majority of your time in just a few of them, and some of them you may almost never touch. Here's a brief introduction to what Rails makes for you.

## app/ ##

**Importance to beginners: Highest**

The app folder is where you will do the majority of your work. Remember how Rails is structured according to the MVC (model-view-controller) pattern? The app/ folder contains subfolders for models, views, and controllers. 

The views/ subfolder should contain templates which are mostly static HTML (or static JS, or JSON, or sometimes XML) with just a little bit of embedded Ruby code. Writing complicated logic inside a view template is not a good practice. However, sometimes complicated logic is needed to determine how a view template should render. For those situations, Rails provides a helpers/ subfolder for Ruby code which does that.

The use of Rails view helpers is somewhat controversial. Many developers feel they aren't much better than placing logic directly in a view template. Various attempts have been made to do things better, using different kinds of Presenter objects.

The app/ folder also contains a mailers/ subfolder, for sending emails.

## bin/ ##

**Importance to beginners: Very low**

There are a handful of different programs you may want to run while working on an app. A couple of the most common ones are called `rails`, which handles starting your server, generating several types of files, and a few other tasks, and `rake`, which is used among other reasons to make changes to your database. These programs can interact with various gems, so it's important that when you run these programs in the context of an app, they interact with the gem versions you're using in that app. The `/bin` folder provides a place for wrappers around those programs which ensure they're run in the proper environment.

## config/ ##

**Importance to beginners: High**

This directory contains several kinds of configuration code. When you start a project, or deploy it to the internet, you'll have to configure it to connect to the right database. 
You'll spend a lot of time editing the `routes.rb` file to connect URLs to controller actions.

There are many other configuration settings, but for now this directory is important to you for the above two reasons, especially the `routes.rb` file.

## config.ru ##

**Importance to beginners: Low**

We've played a bit with WEBrick, which is a web server - it takes a request sent via HTTP from a client program (like a web browser) and returns a response via HTTP (an HTML document). There are lots of web servers written in Ruby. There are also lots of web frameworks like Rails written in Ruby. Getting the frameworks and the web servers to communicate smoothly could have been tough. That's why a system called Rack was developed. Rack provides an interface between web servers and web frameworks. The `config.ru` file configures how your Rails app communicates with Rack.

You don't need to open this.

## db/ ##

**Importance to beginners: Medium**

A lot of database-related items live here. Your database _schema_ is in here. That's a Ruby file which documents the names of your database tables and all of their column names and types and default values. This is also the home of all the _migration_ files you generate for your app, which are how you add database tables and columns and so on.

There is also a `seeds.rb` file in here, which is the Rails way of loading an initial batch of data into the database.

Surprisingly, the database itself is usually _not_ in this folder, unless you're using sqlite3, which at first we will.

Generally the files you'll edit in here are the migrations, which (if things go well) get edited one time and then applied to the database. Later on you might work with the seeds file.

## Gemfile / Gemfile.lock ##

**Importance to beginner: Medium**

The Gemfile lists all of the gems your app depends on. Rails generates a Gemfile with several gem dependencies, and as your apps grow you'll identify specific pieces of functionality you'd like to have, find them in some high-quality gem, and add that gem to your Gemfile.

Gemfile.lock is automatically generated and simply lists the specific versions of gems your project must use so all the gems in your app are compatible with each other. (I say 'simply', but this used to be a giant headache.) You'll never touch Gemfile.lock.

## lib/ ##

**Importance to beginner: Low**

This is a somewhat complicated, controversial subject. For now let's say that this folder should contain Ruby code that is useful to your app but is potentially generic enough to be used in other projects. In particular, it should not reference your app's _domain_. (A domain is a body of knowledge; if you're building a game, your app's domain will involve concepts like a game, players, perhaps a board, turns, etc.)

## log/ ##

**Importance to beginner: Medium**

This is where Rails keeps a record of what happens while the app is running, especially interactions with the database and errors. You'll refer to the `development.log` file frequently to see why things are blowing up. You never write anything in here, just read it.

## public/ ##

**Importance to beginner: Low**

There was a public directory in the last weekend project, which housed some javascript and css. Rails used to do that, though newer versions hold js and css in the app folder. The public folder is less important now. The files that remain in here are things that have to be accessible by the web server when your Rails app breaks, ie various sorts of error pages. It makes your app look much more professional to have nicely styled custom error pages instead of the bland Rails defaults, but those are things you can write once and never touch again.

## Rakefile ##

**Importance to beginner: Low**

`rake` is an important program which is configured in part by this file. You don't really need to do anything with this file to use `rake` though.

## test/ ##

**Importance to beginner: High**

Testing is an extremely important part of software development. A well-written suite of tests can do more than catch bugs, it can help guide how code is written. This is a big subject which we'll cover in more depth soon. For right now, know that the test folder is second in importance only to the app folder.

## tmp/ ##

**Importance to beginner: Low**

Temporary files, usually automatically generated by some server process or another, read by some server process or another, and deleted by some server process or another.

## vendor/ ##

The home of functionality you didn't write yourself. Except for gems, which live somewhere else. Usually. 
