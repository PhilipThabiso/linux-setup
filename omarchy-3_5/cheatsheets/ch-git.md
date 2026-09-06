Git Cheat Sheet

# Getting Started


Start a new repo:

git init

Clone a repo:

git clone <url>

# taging & Committing


Stage specific file:

git add <file>

Stage all changes:

git add .

Check status:

git status

Commit with message:

git commit -m 'message'

Amend last commit:

git commit --amend

# Branching


List branches:

git branch

Switch branch:

git switch <name>

Create and switch branch:

git switch -c <name>

Delete branch:

git branch -d <name>

# Changes & Diffs


Show unstaged changes:

git diff

Show staged changes:

git diff --staged

Short history log:

git log --oneline

# Undo & Discard


Discard unstaged changes:

git restore <file>

Unstage a file:

git reset <file>

Wipe all local changes:

git reset --hard

Undo last commit (keep files):

git reset HEAD^

Stash changes:

git stash

# Remote Operations


Add a remote:

git remote add origin <url>

Push to origin:

git push origin <branch>

Push and set tracking:

git push -u origin <branch>

Pull changes:

git pull

Fetch changes:

git fetch
