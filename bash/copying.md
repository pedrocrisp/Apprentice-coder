# Copying

### NB: If you're ever unsure of what `rsync` will do, run it with the `-n` flag, and it will show you, without clobbing your entire home directory ###

To copy and get info on copy use rsync

    rsync -rhiv --progress <source> <desination>

---

To copy subdirectories of source directory and only select file type of subdirectory to new destination (current directory) and keep directory structure, eg get sample folders and their fastq.gz files:

    rsync -rhiv --include '*/' --include '*.fastq.gz' --exclude '*' ~/<path_to_reads>/reads/ ./
    # --include '*/' # include subdirectories in read folder
    # --include '*.fastq.gz' # include ".fastq.gz" files
    # --exclude '*' # exclude everything else

To further only select some subdirectories, eg the "Sample" directories:

    rsync -rhiv --include 'Sample*/' --include '*.fastq.gz' --exclude '*' ~/<path_to_reads>/reads/ ./
