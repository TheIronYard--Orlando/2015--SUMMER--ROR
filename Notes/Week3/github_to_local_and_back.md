* First you need write privileges to a GitHub repository
  * You could be given privileges for an existing repo
  * You could fork a repo
  * You could just create your own
* Then switch to your local computer and clone it
  * hub makes this easier:
  * $ hub clone [account]/[repo]
* Then cd into the repo folder and create a branch on your local computer and check it out
  * $ cd [repo]
  * $ git branch [my_new_branch]
  * $ git checkout [my_new_branch]
    * or $ git checkout -b [my_new_branch]
* Do some work (not shown), and commit it
  * $ git add [files you created or changed]
  * $ git commit -m "[describe the work you did]"
* Push your changes back to the GitHub repo
  * $ git push
    * at first this will complain, but it'll tell you how to fix the complaint
* Switch back to GitHub and open a pull request
