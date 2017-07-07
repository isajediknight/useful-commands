# Configuration and Setup

## Windows
[Probably easiest to use Github Desktop GUI](https://desktop.github.com/ "Download Github Desktop")

## Linux

### Install Git
<pre>sudo apt-get install git</pre>

### Folder Structure
Go to or create the desired folder structure.  You Git repository will be created in whatever folder you init in.
<pre>
git init
</pre>

### Various Configs
<pre>
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git remote add origin https://github.com/USERNAME/GIT_REPO.git
</pre>

#### Optional
<pre>
git config --global credential.helper wincred
git config credential.helper store
git config --global credential.helper 'cache --timeout 7200'
</pre>

### Pull down current code
<pre>
git pull https://github.com/isajediknight/GIT_REPO.git BRANCH_NAME
</pre>
Or sometimes this is needed to reset what you have
<pre>
git reset --hard SHORT_HASH_FOR_COMMIT
</pre>

### Setting Origin
<pre>
git remote add origin https://github.com/USERNAME/GIT_REPO.git
</pre>

### Setting Upstream
<pre>
git push --set-upstream https://github.com/USERNAME/GIT_REPO.git master
</pre>

### Setup Branch Tracking
<pre>
git branch --set-upstream-to=ABOVE_BRANCH BELOW_BRANCH
</pre>
#### Optional - Setup Remote Remote Branch Tracking
<pre>
git branch --set-upstream-to=origin/ABOVE_BRANCH BELOW_BRANCH
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
git push origin CURRENT_BRANCH
</pre>
1. _Alternatively checkout another branch and merge your code in_
<pre>
git checkout BRANCH_ABOVE
git merge BRANCH_BELOW
git push origin CURRENT_BRANCH
</pre>
1. _Alternatively delete branch if it is no longer needed_
<pre>
git push origin --delete BRANCH_BELOW
git branch -D BRANCH_BELOW
</pre>

#### Placeholder

### Reset
Only do this if you are okay with losing changes
<pre>
git reset --hard 6digits
</pre>

### Commiting
Add all files:
<pre>
git add .
</pre>

Add one file:
<pre>
git add FILENAME.TXT
</pre>

# Unknowns
<pre>
git congif --global push.default simple
</pre>
