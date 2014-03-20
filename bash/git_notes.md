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

#create new repo
- make directory
- make the .gitignore file, suggestions:
    *~
    *.swp
    *.DS_Store
- $ git init
- $ git add .gitignore
- $ git status to check what is staged
- $ git commit -m "initial commit for <new repo>"
- go to github and make a new repo
- add licence use GPL3 template (code) or "cc by sa" for documents/protocols
- copy ssh link
- back to terminal: $ git remote add origin <paste ssh link>
- if you added anything on github then git pull:
	- git pull origin master
- $ git push -u origin --all

# On a new computer
- in terminal $ ssh-keygen (do not overwite if it already exists)
- hit enter until back to shell
- Get public ssh
	- cat ~/.ssh/id_rsa.pub
	- copy to clip clipboard, should start with ssh-rsa and end with user@host
- go to git hit spanner > ssh keys > add ssh key
- paste into key section, add computer name in title, then computer is accessabel over ssh
- git clone <repo of choice>

