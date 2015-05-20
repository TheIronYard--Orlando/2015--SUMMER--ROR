##Assignment
```Markdown
* **Yak Shaving**
  * _WIP Issue_: `03 -- Server OOP -- YOUR NAME`
    * [ ] link to PR in `USERNAME.github.io`
    * [ ] link to PR in `TIY-Assignments`
  *  _WIP Branches_:
    * [X] `USERNAME.github.io:01--love-your-grammar`
    * [ ] `TIY-Assignments:03--server-oop`
  * _WIP Files_:
    * `USERNAME.github.io`
      * `about/strings.md`
      * `about/numbers.md`
      * `about/arrays.md`
      * `about/hashes.md`
      * `about/methods.md`
      * `about/enumerable_methods.md`
      * `about/objects.md`
    * `TIY-Assignments`
      * `03--Server-OOP/server.rb`
      * `03--Server-OOP/car_data.csv`
      * `03--Server-OOP/home.html`
      * `03--Server-OOP/template.html.erb`
* **Reading Ruby**
  * [ ] Describe Strings
  * [ ] Describe Numbers
  * [ ] Describe Arrays
  * [ ] Describe Hashes
  * [ ] Describe Methods
  * [ ] Describe Enumerable Methods
  * [ ] Describe Objects
* **Your First Server**
  * [ ] create TIY-Assignments branch named `03--server-oop`
  * [ ] populate the branch with files listed in _WIP BRANCH_
  * [ ] opened PR _from_ `03--server-oop` _to_ `master`
  * [ ] write a home.html page
  * [ ] write a WEBrick server that can serve the home page at `localhost:8000/home`
  * [ ] make sure there's a way to stop the server!
  * [ ] write a template.html.erb file that could display different selections of cars
  * [ ] update your WEBrick server to display multiple car selections
    * [ ] compact
    * [ ] sporty
    * [ ] large
    * [ ] Mazda
    * [ ] Pontiac
    * [ ] luxury (price > $30k)
    * [ ] Are you using the same code repeatedly? Try to eliminate duplication and write each thing once.
```

## Reading Ruby
It's really important to wrestle with the documentation until the both the concepts and the syntax of Ruby become yours. Reading by itself is not enough. Writing down what you've read, rephrased into your own words, drives understanding. You'll be writing about things you've written about before. This time strive for more thoroughness. If you are describing a class, write some example objects, and example situations in which you'd use that class. Write out methods called on example objects, what sorts of arguments those methods take, and what the return values are. 

## Your First Server
You can use Ruby to get HTML documents to appear in your browser. That's pretty cool. Make a simple home page with some welcome text. Write a WEBrick server to serve that page. Start your server and visit the home page you made.

Next incorporate the file opening and text parsing you did yesterday with the WEBrick server by making an ERB template (template.html.erb) that can display a table of cars. Use the csv file to make a set of car _objects_ (not car _hashes_) and display the collection of cars in the template.

