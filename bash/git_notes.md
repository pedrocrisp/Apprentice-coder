# git stuff...

##git workflow:

    git status
    git add <file, or .>
    git diff --staged
    git commit -m "<notes>"
    git push

## Branches
To see all the branches (*denotes current branch)

    git branch

To change branches

    git checkout <branch>

To pull from Kevin's remote to my repo, RNAseqPipeline is set up as the default remote is origin

    git pull <remote> <branch>
    git pull kevin master

then to update my origin

    git push 

###create a new branch

    git checkout -b fixfeatureCounts master
Then on first push set the remote tracking at origin

    git push -u origin fixfeatureCounts

To add this branch on other machines/servers, pull and then checkout.  eg on server go to repository then:

    git pull
    git checkout fixfeatureCounts

Once changes are merged you can delete branch

    git branch -d fixfeatureCounts
If there are unmerged changes it will error, to force delete

    git branch -D fixfeatureCounts

## git ignore: 
go to top directory of repo and open or create .gitignore

    vim .gitignore
Type file or glob to be ignored

## Create new repo
- make directory
- make the .gitignore file, suggestions:
  * *~
  * *.swp
  * *.DS_Store
``` shell
$ git init
$ git add .gitignore
$ git status to check what is staged
$ git commit -m "initial commit for <new repo>" 
```
- go to github and make a new repo
- add licence use GPL3 template (code) or "cc by sa" for documents/protocols
- copy ssh link
- back to terminal: 
```
$ git remote add origin <paste ssh link>
```
- if you added anything on github then git pull:
```
    $ git pull origin master
    $ git push -u origin --all
```
### On a new computer
- in terminal 
```
    $ ssh-keygen (do not overwite if it already exists)
``` 
- hit enter until back to shell
- Get public ssh
```
    cat ~/.ssh/id_rsa.pub
```
- copy to clip clipboard, should start with ssh-rsa and end with user@host
- go to git hit spanner > ssh keys > add ssh key
- paste into key section, add computer name in title, then computer is accessable over ssh
```
    git clone <repo of choice>
```
