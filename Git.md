# Configuration and Setup

## Windows
[Probably easiest to use Github Desktop GUI](https://desktop.github.com/ "Download Github Desktop")

## Linux

### Install Git
<pre>sudo apt-get install git</pre>

### Set Remote Repository
<pre>
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
</pre>

### Folder Structure
Go to or create the desired folder structure.  You Git repository will be created in whatever folder you init in.
<pre>
git init
</pre>

### Setting Upstream
<pre>
git push --set-upstream https://github.com/USERNAME/GIT_REPO.git master
</pre>

### Branching

1. Create New Branch
<pre>
git checkout -b NEW_BRANCH
</pre>
1. Make your changes and test them
1. Track your changes
<pre>
git add .
</pre>
1. Add your commit and message
<pre>
git commit -m "brief description of the change"
</pre>
1. Commit your changes
<pre>
git push origin master
</pre>
1. _Alternatively checkout another branch and merge your code in_
<pre>
git checkout BRANCH_ABOVE
git merge BRANCH_BELOW
git push origin master
</pre>
1. _Alternatively delete branch if it is no longer needed_
<pre>
git push origin --delete BRANCH_BELOW
git branch -D BRANCH_BELOW
</pre>

#### Placeholder

### Commiting
Add all files:
<pre>
git add .
</pre>

Add one file:
<pre>
git add FILENAME.TXT
</pre>

### Merging