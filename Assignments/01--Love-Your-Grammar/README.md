# 01 -- Love Your Grammar

## Homework

### Deliverables

Create an issue in _this_ repository called `01 -- Love Your Grammar -- YOUR NAME` replacing `YOUR NAME` with your first and last name; CAPSLOCK is optional. This is your _Work In Progress (WIP) Issue_, and you'll make one for _every_ assignment. Paste the following Markdown into the description of that issue:

```markdown
* [ ] **Yak Shaving**
  * [ ] Create WIP Issue: `01 -- Love Your Grammar`
  * [ ] Create WIP Branch: `USERNAME.github.io:01--love-your-grammar`
    * [ ] Add `README.md`
    * [ ] Open Pull Request to `USERNAME.github.io:master`
  * [ ] Add link to PR in `USERNAME.github.io` to _WIP Issue_
* [ ] **Reading About Ruby**
  * [ ] Start the Ruby Primer at [Ruby Monk](https://rubymonk.com/learning/books/1-ruby-primer). Complete the following sections:
    * [ ] Introduction to Ruby Objects
    * [ ] Introduction to Strings
    * [ ] Arrays in Ruby
    * [ ] Hashes in Ruby
* [ ] **Writing About Ruby**
  * [ ] Create `about/ruby.md` in `USERNAME.github.io:01--love-your-grammar`
  * [ ] Explain basic classes: Numeric, String, Array, Hash
* [ ] **GitHubbing to Know You**
  * [ ] Fork `TheIronYard--Orlando/student-roster`
  * [ ] Duplicate `TEMPLATE.md` as `USERNAME.md` using your Github username
  * [ ] Fill in your name and avatar _only_
  * [ ] Open a Pull Request from your fork to the original
  * [ ] Add a link to the PR to your _WIP Issue_
* [ ] **HTML**
  * [ ] Create `index.html` in your `TIY-Assignments` repo 
  * [ ] That file should have HTML5 doctype, a head tag, title tag, body tag, and some text.
```

Most of your work for this assignment should be committed into a repository called `USERNAME.github.io` where `USERNAME` is your Github username, all lowercase, e.g. `bgates.github.io`. In that repo, create a new _branch_ called `01--love-your-grammar` and ensure all your commits are made _to that branch_. Inside your `USERNAME.github.io` repo, on the `01--love-your-grammar` branch, create a file named `README.md` and paste the following Markdown code:

```markdown
---
permalink: index.html
---

# This is a Heading

* this is a bulleted list
* it has items on it

[Ruby Basics](about/ruby.md)
```

Add a descriptive commit message, then _immediately_ open a Pull Request _from_ your `01--love-your-grammar` branch (called the "head") _into_ your `master` branch (called the "base"). Add a comment to your _WIP Issue_ that contains a link to that Pull Request as proof of progress. As you add work to your branch, your PR will update automatically.

### Reading About Ruby

Complete the tasks on the Ruby Monk website. 

### Writing About Ruby

Use [Ruby Doc](http://ruby-doc.org/core-2.2.2/) to research and explain the following as if teaching a peer or writing a tutorial:

* Basic classes: `Numeric`, `String`, `Array`, and `Hash`
  * How to create new instances of each class
  * Basic Operations _for numeric, string, and array objects_:
    * Arithmetic, e.g. `+`, `-`, `*`, `/`
      * Note that not all classes have all arithmetic operations
    * Comparison, e.g. `>`, `<=`
    * The `[]` operator (where appropriate)
  * Iteration (where appropriate)
* Variable assignment
  * Equality comparison

### Githubbing to Know You

There's a repository in `TheIronYard--Orlando` called `student-roster` that's lacking some very important information... YOURS! Fork the repo and add a file to your cohort and class (that's `2015-05/ROR/` in case you're wondering) that's a copy of the `TEMPLATE.md` file but named after your Github username, e.g. mine is `2015-05/ROR/bgates.md`. Just fill in your full name, linked to your profile page, and your avatar. Open a Pull Request to `master` in the main repo. Put a comment in your _WIP Issue_ that links to your PR.

## Additional Resources

* [Fight what you read](http://jsomers.net/blog/kenjitsu)
* **The Growth Mindset**
  * [_You can learn anything_ on Khan Academy](https://www.khanacademy.org/youcanlearnanything)
  * [_The Power of Yet_ by Dr. Carol Dweck on TED](https://www.ted.com/talks/carol_dweck_the_power_of_believing_that_you_can_improve)
  * [_Carol Dweck, Growth Mindsets and Motivation_ on TED-ed](http://ed.ted.com/on/UA77FlTc)
* [Ruby documentation](http://ruby-doc.org/core-2.2.2/) 
* [Ruby Monk - Ruby Primer](https://rubymonk.com/learning/books/1-ruby-primer)
* [A minimal HTML5 document](http://www.sitepoint.com/a-minimal-html-document-html5-edition/) [note: yours can be even more minimal than that - no javascript or css]
* [Documentation for the `hub` command](http://hub.github.com)
