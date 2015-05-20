# Strings

Strings are collections of characters. They can include letters, numbers, spaces, punctuation, etc. 

## Creation

Strings can be initialized using the literal method by wrapping characters in quotes
```ruby
one_string = "like this"
```
or by passing the characters (in quotes) to String.new
```ruby
other_string = String.new("as thus")
```
A string can be initialized surrounded by either double quote or single quote characters.

## Methods

Some useful methods for string are
```ruby
"a string".reverse #=> "gnirts a"
"string".sub("i", "o") #=> "strong"
"shout".upcase #=> "SHOUT"
"string".include?("A") #=> false
"string".capitalize #=> "String"
"45".to_i #=> 45
"banana".to_i #=> 0
```

## Arithmetic

Strings can be added and multiplied
```ruby
"Ho! " * 3 #=> "Ho! Ho! Ho!"
"Ho! Ho! Ho!" + " Merry Christmas!" #=> "Ho! Ho! Ho! Merry Christmas!"
```
## Special Properties

###Interpolation

A double-quoted string can have Ruby code embedded in it with the character sequence #{}. 
The embedded code will get evaluated and the return value inserted into the string.
```ruby
"8 * 9 = #{8 * 9}" #=> "8 * 9 = 72"
name = "Bob"
"Hi there #{name}" #=> "Hi there Bob"
```
###Escape Characters

The \ character can be used to change the meaning of the character following it in a (double-quoted) string.
* `\n` is a `newline`
* `\t` is a `tab`
* `\#{}` prevents interpolation

###Accessing Elements

Characters in a string can be accessed with [] characters, similar to an array.
```ruby
"the beginning"[0] #=> "t"
```

##To Learn More
http://ruby-doc.org/core-2.2.0/String.html
