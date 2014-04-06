To run the next step:

```
ssh -Y bec@north1ws.anu.edu.au

cd /fast/bec/alxxrn/
```
Then enter screen

```
screen
```

Then call the next script

```
bash ~pete/gitrepos/NGS-pipelines/RNAseqPipe3/03-runner.sh
```
Open a new screen using ```ctr + A``` then ```c```

Check it is runing using ```htop```.

Then hit ```ctr + A``` then ```d``` to detach the screen and logout.  Good luck.
