To use IGV

0. Read this readme

1. Launch IGV eg go to http://www.broadinstitute.org/software/igv/download 
-register 
-click launch at appropriate memory for your computer ie probably 1.2 GB, or if you have a newer computer 2 GB

The first time you use IGV you need to change the genome server:
2. In IGV go to View>preferences, then select the Advanced tab and change the Genome Server URL to:
http://north1ws.anu.edu.au/~pete/igv/pete_igv_genomes.txt
Then quit and relaunch as in 1. or find IGV on your computer in program files and double click it.

3. Load a URL to a data set eg:
http://north1ws.anu.edu.au/~pete/igv/Exp277_EL_drought_RNAseq/Exp277_EL_drought_RNAseq.xml

######
To make load a bunch of files into a new IGV session 
-run the igv_batch.command script (or simply launch igv on the cmd line, depending how you have installed it)
-add the -b flag and supply a batch file 
-batch file format:
new
load <path_to_bam1>
load <path_to_bam2>
etc

eg launch on mac and get batch file from north1ws:
$ bash /Applications/IGV_2.3.18/igv_batch.command -b http://north1ws.anu.edu.au/~pete/igv/data/Exp277_xrn_RNAseq/wigs.txt

Then save as a session .xml file
######

####
random stuff
http://localhost:60151/load?file=http://north1ws.anu.edu.au/~pete/Exp277_small_bams.xml

http://localhost:60151/load?file=http://north1ws.anu.edu.au/~pete/Exp277_small_bams_coverage.xml

http://www.broadinstitute.org/igv/projects/current/igv.php?sessionURL=http://north1ws.anu.edu.au/~pete/Exp277_small_bams_coverage.xml&user=Pogson

####
