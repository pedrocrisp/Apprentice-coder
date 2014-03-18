# git stuff...

##git workflow:

    git status

    git add <file, or .>

    git diff --staged

    git commit -m "<notes>"

    git push

#to see all the branches (*denotes current branch)
git branch

#to change branches
git checkout <branch>

#to pull from Kevin's remote to my repo, RNAseqPipeline is set up as the default remote is origin
# git pull <remote> <branch>
git pull kevin master
#then git push to update my origin

#create a new branch
git checkout -b fixfeatureCounts master
#then on first push set the remote tracking at origin
git push -u origin fixfeatureCounts
#once changes are merged you can delete branch
git branch -d fixfeatureCounts
#if there are unmerged changes it will error, to force delete
git branch -D fixfeatureCounts

#git ignore: got to top directory of repo and open or create .gitignore
vim .gitignore
#type file or glob to be ignored
