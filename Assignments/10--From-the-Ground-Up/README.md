# From the Ground Up

## Assignment
```markdown
* [ ] **Yak Shaving**
  * _WIP Issue_: `10 -- From the Ground Up -- YOUR NAME`
    * [ ] link to PR for `TIY-Assignments/09--for-rails`
    * [ ] link to PR for `TIY-Assignments/10--from-the-ground-up`
    * [ ] link to PR for `sandbox`
  *  _WIP Branches_:
    * `TIY-Assignments/09--for-rails` (continue the todo_mvc_v2 on the same branch as yesterday)
    * `TIY-Assignments/10--from-the-ground-up` (make the new Rails project in a new branch)
  * _WIP Files_:
    * `TheIronYard--Orlando/student-roster`
      * `2015-05/ROR/`
* [ ] **GitHub and You** (instructions below)
* [ ] Finish todo_mvc_v2
  * [ ] make sure you can add new todos
  * [ ] get all the links to work
  * [ ] get all the buttons to work
  * [ ] ** BEAST MODE ** 
    * [ ] use url helpers wherever possible
    * [ ] refactor `toggle_all` and `clear_completed` to exist in a separate controller
  * [ ] ** NIGHTMARE MODE ** 
    * [ ] condense `index`, `active`, and `completed` into one action
    * [ ] condense `update` and `toggle` into one action
* [ ] Iron Roster on Rails (details below)
  * [ ] Create Person model
  * [ ] Add yourself to db
  * [ ] make a `PeopleController`
  * [ ] wire up routes
    * [ ] list everybody
    * [ ] show one person
    * [ ] present a form for a new person
    * [ ] save the new person in the db
    * [ ] present a form to edit a person
    * [ ] save the updated person in the db
    * [ ] delete a person
  * [ ] set up controller actions for the above
  * [ ] create view templates
  * [ ] test your app
    * [ ] listing people
    * [ ] showing one person
    * [ ] showing the new person form
    * [ ] saving the new person
      * [ ] remember to comment out the `protect_from_forgery` method in `ApplicationController`
    * [ ] showing the edit person form
    * [ ] saving the updated person
    * [ ] destroying a person
  ```
  
## GitHub and You

Let's have a little practice on the mechanics of GitHub:
* Make a _new, temporary_ repository called `sandbox`, with a README file
* Clone that repo to a location on your local computer
* Make a new branch in the _local_ version of your repo called `practice`
* Add a little text to the README
* Commit your change and push back to the remote repo
* Open a PR to merge the two remote branches
* Merge
* Locally, switch to the master branch
* Pull the changes back down

## TodoMVCv2, Take 2

You have most of TodoMVC re-implemented as a Rails app. Finish off the last few bits. Do that in the same branch you
started for it yesterday.

## Iron Roster

In your `10--from-the-ground-up branch` (local version), create a new Rails project, `iron_roster`. 
The app should have one model, Person, with name, subject, and github_account.
An index page should list the name of each person who has been entered into the app.
Each name should link to a show page for that person. The show page should have name, subject, and github_account.
There should also be a page to add a new person, a separate page to edit an existing person, 
actions to handle both of those pages, and additional actions to create, update, and destroy people.
(Note that if an action doesn't have a corresponding page template, it should redirect...somewhere.)
