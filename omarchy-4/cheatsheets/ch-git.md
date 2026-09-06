# Git Cheat Sheet

### Getting Started
**Start New Repo**
`git init`

**Clone Repo**
`git clone <url>`

---

### Staging & Committing
**Stage Specific File**
`git add <file>`

**Stage All Changes**
`git add .`

**Check Status**
`git status`

**Commit with Message**
`git commit -m 'message'`

**Amend Last Commit**
`git commit --amend`

---

### Branching
**List Branches**
`git branch`

**Switch Branch**
`git switch <name>`

**Create and Switch Branch**
`git switch -c <name>`

**Delete Branch**
`git branch -d <name>`

---

### Changes & Diffs
**Show Unstaged Changes**
`git diff`

**Show Staged Changes**
`git diff --staged`

**Short History Log**
`git log --oneline`

---

### Undo & Discard
**Discard Unstaged Changes**
`git restore <file>`

**Unstage a File**
`git reset <file>`

**Wipe All Local Changes**
`git reset --hard`

**Undo Last Commit (Keep Files)**
`git reset HEAD^`

**Stash Changes**
`git stash`

---

### Remote Operations
**Add a Remote**
`git remote add origin <url>`

**Push to Origin**
`git push origin <branch>`

**Push and Set Tracking**
`git push -u origin <branch>`

**Pull Changes**
`git pull`

**Fetch Changes**
`git fetch`it fetch
