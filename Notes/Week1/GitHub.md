# Tour de GitHub

## Repository

A folder containing all the code for a project. This document is inside the TheIronYard--Orlando/2015--SUMMER--ROR repository. 

## Issue

An issue is opened in a repository to communicate about work that is being done on that repository (repo). GitHub discusses issues in some detail [here](https://guides.github.com/features/issues/).

You can notify other people about the conversation in an issue with an [@mention](https://github.com/blog/957-introducing-issue-mentions).

## Branch
A branch of a repo is a version of the repo. It might be created in order to add a feature, or to squash a bug. (In either case, a branch may be created in response to an issue that has been raised.)

At the moment a branch is created, it is identical to the branch it's created from. Creating the feature or squashing the bug will involve changing the new branch. Once the changes are satisfactory (the feature is complete or the bug is gone), the branch can be merged back into its source.

## Pull Request
A pull request (PR) is GitHub's way to communicate that the content of two branches should be merged. 

GitHub documents how to use pull requests [here](https://help.github.com/articles/using-pull-requests/).

Since PRs are often intended to solve problems that were raised in issues, there is a way to [automatically close issues with a PR](https://github.com/blog/1506-closing-issues-via-pull-requests).

## Automatic Linking

* Make an issue: this says _"work needs to be done (to add a feature or squash a bug)"_
* Make a PR: this says _"I have done work, and I would like to incorporate it into the original code"_
* In the PR, add a comment that refers (links) to the issue: that is saying _"the work I have done is the work that needed to be done (to add a feature or squash a bug"_
* The issue will be automatically updated to include a link back to the PR: that is so anyone following the issue will be alerted that there is a potential solution to the issue
