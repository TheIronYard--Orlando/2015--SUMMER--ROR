### Prework -- Or what to do before you get here.

There are four components to this assignment: installing software, registering for services, practicing with some tools, and reading about learning and about Ruby. 

Most of the individual tasks in the assignment involve getting your laptop ready for Day 1 by installing a few key pieces of software. You will also register for two invaluable services, GitHub and Slack. Slack is intuitive because its purpose is familiar: it's a communications tool. GitHub is harder to understand because it's used for a less familiar purpose, version control. That's why part of the third component of the assignment is to go through several short online tutorials that introduce what version control is and how git and GitHub are used. Version control is a subject that is unfamiliar to most non-developers yet essential to most developers. The same can be said of the use of the command line, so you will also have some practice in working there. Just by this point in the prework assignment, you are probably getting the idea that you will have a lot to learn during this course. I used to think that how much and how fast I could learn was mostly an accident of genetics which I could never change, but I've changed my mind based on some research I've read about, applied in my own life, and asked my students to apply. You will read about that in an introduction to mindsets. Last but not least, you will read over one of the best (and free!) introductory books on the Ruby language.

## Requirements

You will create a new [GitHub Issue](https://guides.github.com/features/issues/) in this repository which contains the task list below, and check off the tasks as you complete them.

This file is written in a format called [Markdown](https://guides.github.com/features/mastering-markdown/), which is a way to write a document using a simple set of punctuation characters that can be rendered into HTML. Click on the link to this [README](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR/blob/master/Assignments/00--Here-It-Comes/README.md) file in GitHub and use the **Raw** button to see the unrendered Markdown text. If you copy and paste the text _in the Raw view_ from the **Tasks** and **Deliverables** sections below into the **Description** of your issue, you should end up with a bunch of checkboxes, just like the ones in this document. As you complete tasks, check off the corresponding checkboxes and watch your progress bar fill! 

### Tasks:

* [X] [Create a Github account](https://github.com/signup)
* [X] [Star the class project](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR)
* [ ] *5 min* Read over [the class wiki](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR/wiki)
* [ ] *5 min* [Create a new *WIP Issue*](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR/issues/new)
  * [ ] Named `00 -- Here It Comes -- YOUR NAME` (where `YOUR NAME` is _your_ name)
  * [ ] With this checklist as the description
* [ ] *5 min* [Edit your Github profile](https://github.com/settings/profile) to provide:
    * [ ] A picture, so I can recognize your face.
    * [ ] Your full name, so I can recognize your name.
    * [ ] A valid public email address, so I can contact you if I need to.
* [ ] *10 min* Read the `README.md` files in:
    * [ ] [Assignments](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR/tree/master/Assignments)
    * [ ] [Notes](https://github.com/TheIronYard--Orlando/2015--SUMMER--ROR/tree/master/Notes)
* [ ] *15 min* [Install Homebrew](http://brew.sh) on your Mac
    * [ ] Open `Terminal.app`
    * [ ] [Install Homebrew and the `brew` command](http://brew.sh/#install)
    * [ ] Read [the Homebrew Wiki](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme) to learn more about Homebrew
* [ ] *10 min* Using the `brew` command, install the following packages:
    * [ ] `zsh`
    * [ ] `git`
    * [ ] `hub`
    * [ ] `chruby`
    * [ ] `ruby-install`
* [ ] *10 min* Using the `ruby-install` command, install Ruby 2.2.2.
* [ ] *5 min* Set the default version of Ruby to 2.2.2.
* [ ] *10 min* Add the output of the following commands as comments on your *WIP Issue*:
  * [ ] `which zsh && zsh --version`
  * [ ] `which git && git --version`
  * [ ] `which hub && hub --version`
  * [ ] `which ruby && ruby -v`
* [ ] *10 min* [Install Caskroom](http://caskroom.io)
* [ ] *5 min* Using `brew cask`, install the following applications:
    * [ ] [Google Chrome](http://google.com/chrome)
    * [ ] [Sublime Text](http://sublimetext.com)
    * [ ] [Slack](http://www.slack.com)
* NOTE: The above looks like a lot, but those tasks go quickly. The following items require, and deserve, more time. Don't put them off!    
* [ ] *10 min* [Complete the "Hello World" Github guide](https://guides.github.com/activities/hello-world/)
    * [ ] Add a link to your new Github repo as a comment in your WIP Issue.
* [ ] *20 min* Complete the CodeSchool short course, [Try Git](https://www.codeschool.com/courses/try-git)
* [ ] *10 min* Create _another_ new repository called `TIY-Assignments`
    * [ ] Check the box to create an initial `README.md` file
    * [ ] Select the `CC0` -- "Creative Commons" license for your work
    * [ ] Add a link to your `TIY-Assignments` repo as a comment to your WIP Issue
* [ ] *5 min* [Complete the "Forking Projects" Github guide](https://guides.github.com/activities/forking/)
    * [ ] Add a link to your `Fork-and-Spoon` repo as a comment on your *WIP Issue*
* [ ] *10 min* Install Prezto
  * [ ] Find _and fork_ the Prezto project on Github; add a link as a comment on your *WIP Issue*
  * [ ] Use the `hub` command to clone your fork into your home directory as `.zprezto`: `hub clone prezto .zprezto`
* [ ] *3 hr* Read and complete selected exercises for the [Command Line Crash Course](http://cli.learncodethehardway.org/book/). The command line is another name for the terminal. There are about 10 commands you'll use all the time on the command line, and it's helpful to have them memorized so we can use them right away.  
  * [ ] Introduction
  * [ ] pwd
  * [ ] mkdir
  * [ ] cd
  * [ ] ls
  * [ ] rmdir
  * [ ] touch
  * [ ] cp
  * [ ] mv
  * [ ] rm
  * [ ] Pipes and Redirection
  * [ ] Wildcard Matching
  * [ ] What's In Your Environment
  * [ ] Changing Environment Variables 
* [ ] *20 min* Read the first four pages about growth vs fixed mindsets at http://mindsetonline.com/whatisit/about/index.html. I'll be honest, this sounded hokey to me when I first read it, but watching how people with the two mindsets performed in previous cohorts, I'm sold on the idea. You have much more control over how much you can learn than you might think.
* [ ] *5 hr* Read the book [Learn to Program](https://pine.fm/LearnToProgram/). That's a terrific tutorial if you've never written any code before, or if you've never worked with Ruby before. You can read the original version on the author's website for free, or follow the link he gives to purchase the latest version. For this assignment, the exercises in the book are optional.
  * [ ] 0. Getting Started
  * [ ] 1. Numbers
  * [ ] 2. Letters
  * [ ] 3. Variables and Assignment
  * [ ] 4. Mixing It Up
  * [ ] 5. More About Methods
  * [ ] 6. Flow Control
  * [ ] 7. Arrays and Iterators
  * [ ] 8. Writing Your Own Methods
  * [ ] 9. Classes
  * [ ] 10. Blocks and Procs
  * [ ] 11. Beyond This Tutorial

### Deliverables:

* [ ] *WIP Issue*
  * [ ] named `00 -- Here It Comes -- YOUR NAME`
  * [ ] with description matching **Tasks**
* [ ] A Github Profile with:
  * [ ] Identifiable picture of yourself
  * [ ] Your full name
  * [ ] A valid email address
* [ ] Comments on your *WIP Issue* with output from
  * [ ] `which zsh && zsh --version`
  * [ ] `which git && git --version`
  * [ ] `which hub && hub --version`
  * [ ] `which ruby && ruby -v`
* [ ] Comments on your *WIP Issue* with links to your repos for
  * [ ] `Hello-World`
  * [ ] `TIY-Assignments`
  * [ ] `Fork-and-Spoon`
  * [ ] `prezto`

#### Extracurricular Activities

Regardless of how good you are at typing, a lot of the mistakes you make at first will be simple typographic errors. If you _don't_ know how to touch type (i.e. without looking at the keyboard), start practicing _now_ with http://www.keybr.com/. Typing code is different from typing other documents; more characters are used, and certain letter combinations come up more frequently. If you're fairly confident in your typing ability, try working through the Ruby on Rails lessons on http://typing.io.
 
There are two books that I suggest you start reading. They're both available in digital format on various devices, and they're both relatively easy reads:

* [_Getting Things Done_ by David Allen](http://j.mp/134jABk)
* [_Pragmatic Thinking and Learning_ by Andy Hunt](http://j.mp/1D5nmu8)

