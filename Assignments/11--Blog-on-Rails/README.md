## 11 - Blog on Rails

What's a blog? Just a bunch of posts.

What's a post? Just a title and some text with an author, and some comments.

What's a comment? Some text with an author, connected to a blog post.

The assignment is to make a blog, with several posts. You should be able to create more posts through the browser.
You should be able to see a list of all the posts, with the title and the first 100 characters of text.
There should be a link from each truncated post in the list to a page that displays all of the text for that post,
plus its comments.

On the page that shows an individual post, there should be a form to add a comment to it.

It should also be possible to edit and delete both posts and comments. If a post is deleted, all the comments on it 
should be deleted also.

##Assignment
```Markdown
* **Yak Shaving**
  * _WIP Issue_: `11 -- Blog on Rails -- YOUR NAME`
    * [ ] link to PR in `TIY-Assignments`
  *  _WIP Branch_:
    * [ ] `TIY-Assignments:11--blog-on-rails`
  * _WIP Files_:
    * `TIY-Assignments`
      * `11--blog-on-rails`
* **The Blog**
  * [ ] create TIY-Assignments branch named `11--blog-on-rails`
  * [ ] create a new Rails project in that branch called `first_blog`
  * [ ] push back to your GitHub account
  * [ ] open PR _from_ `11--blog-on-rails` _to_ `master`
  * [ ] generate your models and tables
    * [ ] set up a relationship between them
      * [ ] in db
      * [ ] in code
      * [ ] stop after these two are in place and test in the rails console
  * ** Do the following in any order **
  * [ ] Set up your routes
  * [ ] make all the required templates
    * [ ] listing blog posts
    * [ ] showing one blog post
    * [ ] making a new blog post
  * [ ] make controllers
    * [ ] for posts
    * [ ] for comments
  * [ ] make sure it works in the browser
    * [ ] display a list of blog posts
    * [ ] display a form to enter a new blog post
    * [ ] create a new blog post
    * [ ] show details of one post
    * [ ] make a comment on a post
    * [ ] display an edit form for a blog post
    * [ ] delete a blog post
    * [ ] edit and delete a comment
  * [ ] use some css resources to make the app look less bad
```

## Extras

If you get through all that, there are many different directions you can go. Here are some ideas:

* find a way to generate lots of [lorem ipsum](http://www.lipsum.com/) of one kind or another to make 100 posts
* use a pagination gem to list posts 10 at a time
* promote `author` to be a separate class instead of just a field in both posts and comments
  * make appropriate relationships between authors and posts and comments
  * make it possible to add new authors (and edit/delete/etc)
  * display posts and/or comments by author
* add [tags](http://en.wikipedia.org/wiki/Tag_(metadata)) to posts. Each post could have multiple tags, and each tag could have multiple posts. Display a list of tags along with each post


## Resources
* http://guides.rubyonrails.org/routing.html (this has shortcut compared to what we've been doing)
* http://guides.rubyonrails.org/action_controller_overview.html (sections 1-4)
* http://guides.rubyonrails.org/association_basics.html (section 1, and 2 up to has_many)
  
