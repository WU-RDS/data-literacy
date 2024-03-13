cd tutorial_repo

## Initialize
git init

## Check for files etc
git status # -> Untracked files: code.r

## Add files to be tracked by git
git add code.r

git status # -> Changes to be committed: code.r

## Commit the changes
## -m is for message
git commit -m "Initial commit"

git status # -> nothing to commit

## Make some changes to the file
git status # -> Changes not staged for commit: code.r

## We can add and commit changes at once
git commit -am "First change"

git status # -> nothing to commit

## Make some more changes
git commit -am "Second change"

## Check the log
git log --oneline

## Undo last commit but keep changes
git reset --soft HEAD~1

git status # -> Changes to be committed: code.r
## Changes are staged but not committed
git commit -m "Second change again"

git status

git log --oneline # -> (HEAD) Second change again, previous: First change

## Undo last commit and discard changes
git reset --hard HEAD~1

## Try out a new feature
git switch -c new_feature

git status # -> On branch new_feature

## Make some changes
git commit -am "New feature finished"

git switch main # -> Feature is no longer there, check the file

git merge new_feature # -> Now we have the feature

## Dealing with conflicts
git switch -c conflict_branch
## Change line 2 in code.r
git commit -am "Change line 2"
git switch main
## Change line 2 in code.r
git commit -am "Change line 2 again"

git merge conflict_branch # -> Conflict!
## Look at file and fix

git commit -am "Fixed conflict"

git status

## Remotes
git remote add origin git@github.com:dwinkler1/test_for_dl.git

git push --set-upstream origin main

## make some changes
git status

git commit -am "Change commited offline"

git status # -> Your branch is ahead of 'origin/main' by 1 commit.

git push

## make change on gh
## make different change offline in same line
git commit -am 'Conflict change offline'

git push # -> rejected

## Get the remote changes
git pull # -> conflict

## Fix conflict
git commit -am "Fixed conflict"
## git rebase --continue
git push

## create conflict again
git commit -am 'Conflict change offline'

## force current changes
git push -f
