# 02 -- Tools on Tuesday

## Assignment
```markdown
* **Yak Shaving**
  * [ ] _WIP Issue_: `02 -- Tools on Tuesday -- YOUR NAME`
  * [ ] _WIP Branch_:
    * `ruby-koans:02--tools-on-tues`
    * `USERNAME.github.io:01--Love-Your-Grammar` (cont'd)
    * `TIY-Assignments:02--tools-on-tues`
  * [ ] _WIP Files_:
    * `USERNAME.github.io`
      * `about/methods.md`
    * `ruby-koans`
    * `TIY-Assignments`
      * `car_data.rb`
* [ ] **Ruby and Data**
  * [ ] Defined Car class
  * [ ] Wrote methods on Car
  * [ ] Opened mtcar.csv in Ruby
  * [ ] Produced output
* [ ] **Reading Ruby**
  * [ ] discussed methods
  * [ ] especially enumerable methods
  * [ ] and defining methods
  * [ ] and classes
    * [ ] and instantiating objects
* [ ] **Ruby Koans**
  * [ ] forked https://github.com/TheIronYard--Orlando/ruby_koans
  * [ ] cloned it locally with `git` or `hub`
  * [ ] worked in branch `02--tools-on-tuesday`
  * [ ] pushed to Github: `git push origin 02--tools-on-tuesday`
  * [ ] opened Pull Request
  * [ ] **NORMAL MODE**
    * [ ] `about_asserts.rb`
    * [ ] `about_asserts.rb`
    * [ ] `about_objects.rb`
    * [ ] `about_arrays.rb`
    * [ ] `about_array_assignment.rb`
    * [ ] `about_hashes.rb`
    * [ ] `about_strings.rb`
    * [ ] `about_iteration.rb`
  * [ ] **BEAST MODE** -- ALL KOANS
```

### Ruby and Data

Download the [mtcars.csv](http://vincentarelbundock.github.io/Rdatasets/csv/datasets/mtcars.csv) file. The contents are described [here](http://vincentarelbundock.github.io/Rdatasets/doc/datasets/mtcars.html).

Create a ruby file with the following characteristics:
* Defines a `Car` class
  * a `Car` can be initialized with name, gas_mileage, n_cylinders, horsepower, weight, and quarter_mile_time
* Opens the `mtcars.csv` file and uses the data to create an array of 37 cars
* Identifies the car with the best gas mileage
* Lists the "land yachts" (cars with weight over 3500 lbs)
  * Define a method on `Car` called `land_yacht`
* Prints a "salesman name" for each car:
  * if the car has more than 200hp, the salesman name should include the word "powerful"
  * if the car gets better than 25mpg, the salesman name should include the phrase "fuel efficient"
  * the salesman name should always include the normal name
  * for example, "the powerful Camaro Z28", "the fuel efficient Fiat X1-9", "the Datsun 710"
**BEAST MODE** 
* Find the quickest land yacht
* Create an array of 3 cars, including the cars with the best mileage among 4-cylinder, 6-cylinder, and 8-cylinder vehicles.
### Reading Ruby

Continue your documentation of what you've learned about Ruby so far by discussing:

* enumerable methods
* methods in general
* classes and objects

### Ruby Koans

A [koan](http://en.wikipedia.org/wiki/K%C5%8Dan) is "a story, dialogue, question, or statement which is used in Zen practice to ... test a student's progress." Many people have contributed to sets of koans for learning programming languages, as well. [The Ruby Koans](https://github.com/TheIronYard--Orlando/ruby_koans) introduce a wide variety of language features in an interactive format based on the idea of testing code and making assertions about it. Fork and clone that repository so that you can work on the problems locally. As the README for that repo says, you can run the koans by either the `rake` command or by invoking ruby - `ruby path_to_enlightenment.rb`.

Create a branch in your cloned fork called `02--tools-on-tuesday` and commit your work to that branch. Push your branch to GitHub (`git push`) and open a Pull Request _from_ your `02--tools-on-tuesday` branch _into_ the `master` branch of _your fork_. The point of that PR is to merge the work you have done locally on today's branch to your copy of the repo on GitHub. You don't want your answers to overwrite the questions in the original repo! Remember to link your open PR to your _WIP Issue_ in the class repo!

* fork https://github.com/TheIronYard--Orlando/ruby_koans
* clone _your fork_ locally
* create and checkout a branch named `02--tools-on-tuesday`
* run the koans
* complete koans in the order listed in `koans/path_to_enlightenment.rb` up to `about_iteration.rb`

#### BEAST MODE

Complete _all_ of the koans.

