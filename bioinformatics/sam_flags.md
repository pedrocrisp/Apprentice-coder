#Count flags in bam

samtools view Sample_317_1.bam | grep -v "@" | awk -F"\t" 'BEGIN{print "flag\toccurrences"} {a[$2]++} END{for(i in a)print i"\t"a[i]}'

# Filter on flags / strand
https://www.biostars.org/p/59388/

# SAM flags key
http://broadinstitute.github.io/picard/explain-flags.html
