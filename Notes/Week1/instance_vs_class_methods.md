# Instance Methods vs Class Methods

## Instance Methods

The methods we've worked with so far have mostly been _instance_ methods. They can be called on a particular _instance_ of a class. `[1,2,3].length` calls the method `#length` on the particular array `[1,2,3]`. It doesn't make sense to ask for the length of arrays in general, because each one is different.

Writing an instance method looks like this:
```ruby
class Example

  def some_method_name
    # code goes here
  end
end
```

To invoke that instance method, I'd first have to initialize an instance of the class and assign its value to a variable, then call the method on the variable:
```ruby
my_example_instance = Example.new #that's initializing a instance
my_example_instance.some_method_name #that's calling the method
```
## Class Methods

A few methods we've seen have been _class_ methods. These are usually methods that _create_ instances. `Car.new` is a _class_ method. It doesn't make sense to have `.new` be an _instance_ method, because an instance doesn't exist until after the method is called. 

Writing a _class_ method looks like this:
```ruby
class Example

  def self.a_class_method # the self. is what makes this a class method
    # code goes here
  end
end
```

That class method would be invoked by writing `Example.a_class_method`.

