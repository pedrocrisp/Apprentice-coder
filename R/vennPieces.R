#VennPieces function
#long hand extract gene lists for Venn regions because I cannt figure it out as a function or loop...

##un-comment for debugging
# test.results = ABA.diff.matrix
# comparison1 = "ABAdiffWTvsOst1"
# comparison2 = "ABAdiffWTvsOst1alx8"
# comparison3 = "ABAdiffOst1vsOst1alx8"
# out.dir = "VennTests"
# #rm(list = c("test.results", "comparison1", "comparison2", "comparison3", "out.dir"))
# dir.create("VennTests")

VennPieces <- function(test.results, comparison1, comparison2, comparison3, out.dir){
#create a dataframe called results which has 1,0 or -1 for differentialy expressed or not for each gene
#test.results is a dataframe with the actual data you want to output, such as the df with the fold changes and gene names in it
#comparsion1-3 are the file names for each part of the venn
#out.dir is the directory to print the results to
  
  #prints the venn diagram to file too
  pdf(paste0(out.dir,"/Venn.pdf"))
  vennDiagram(results, 
            include=c("up","down"), 
            counts.col=c('red', 'blue'), 
            show.include=T, cex = c(0.75, 0.75, 0.75))
  dev.off()
#up
    c1 <- test.results[results[,1]==1 & results[,2]!=1 & results[,3]!=1,]
    write.csv(c1, paste0(out.dir,"/",comparison1,"_up.csv"))
    c1.c2 <- test.results[results[,1]==1 & results[,2]==1 & results[,3]!=1,]
    write.csv(c1.c2, paste0(out.dir,"/",comparison1,".",comparison2,"_up.csv"))
    c2 <- test.results[results[,1]!=1 & results[,2]==1 & results[,3]!=1,]
    write.csv(c2, paste0(out.dir,"/",comparison2,"_up.csv"))
    c2.c3 <- test.results[results[,1]!=1 & results[,2]==1 & results[,3]==1,]
    write.csv(c2.c3, paste0(out.dir,"/",comparison2,".",comparison3,"_up.csv"))
    c3 <- test.results[results[,1]!=1 & results[,2]!=1 & results[,3]==1,]
    write.csv(c3, paste0(out.dir,"/",comparison3,"_up.csv"))
    c1.c3 <- test.results[results[,1]==1 & results[,2]!=1 & results[,3]==1,]
    write.csv(c1.c3, paste0(out.dir,"/",comparison1,".",comparison3,"_up.csv"))
    c1.c2.c3 <- test.results[results[,1]==1 & results[,2]==1 & results[,3]==1,]
    write.csv(c1.c2.c3, paste0(out.dir,"/",comparison1,".",comparison2,".","comparison3","_up.csv"))
    
    #down
    c1 <- test.results[results[,1]==-1 & results[,2]!=-1 & results[,3]!=-1,]
    write.csv(c1, paste0(out.dir,"/",comparison1,"_down.csv"))
    c1.c2 <- test.results[results[,1]==-1 & results[,2]==-1 & results[,3]!=-1,]
    write.csv(c1.c2, paste0(out.dir,"/",comparison1,".",comparison2,"_down.csv"))
    c2 <- test.results[results[,1]!=-1 & results[,2]==-1 & results[,3]!=-1,]
    write.csv(c2, paste0(out.dir,"/",comparison2,"_down.csv"))
    c2.c3 <- test.results[results[,1]!=-1 & results[,2]==-1 & results[,3]==-1,]
    write.csv(c2.c3, paste0(out.dir,"/",comparison2,".",comparison3,"_down.csv"))
    c3 <- test.results[results[,1]!=-1 & results[,2]!=-1 & results[,3]==-1,]
    write.csv(c3, paste0(out.dir,"/",comparison3,"_down.csv"))
    c1.c3 <- test.results[results[,1]==-1 & results[,2]!=-1 & results[,3]==-1,]
    write.csv(c1.c3, paste0(out.dir,"/",comparison1,".",comparison3,"_down.csv"))
    c1.c2.c3 <- test.results[results[,1]==-1 & results[,2]==-1 & results[,3]==-1,]
    write.csv(c1.c2.c3, paste0(out.dir,"/",comparison1,".",comparison2,".","comparison3","_down.csv"))
}

VennPieces_2_sample <- function(test.results, comparison1, comparison2, out.dir){
  
  
  pdf(paste0(out.dir,"/Venn.pdf"))
  vennDiagram(results, 
            include=c("up","down"), 
            counts.col=c('red', 'blue'), 
            show.include=T, cex = c(0.75, 0.75, 0.75))
  dev.off()
#up
    c1 <- test.results[results[,1]==1 & results[,2]!=1,]
    write.csv(c1, paste0(out.dir,"/",comparison1,"_up.csv"))
    c1.c2 <- test.results[results[,1]==1 & results[,2]==1,]
    write.csv(c1.c2, paste0(out.dir,"/",comparison1,".",comparison2,"_up.csv"))
    c2 <- test.results[results[,1]!=1 & results[,2]==1,]
    write.csv(c2, paste0(out.dir,"/",comparison2,"_up.csv"))
    
    #down
    c1 <- test.results[results[,1]==-1 & results[,2]!=-1,]
    write.csv(c1, paste0(out.dir,"/",comparison1,"_down.csv"))
    c1.c2 <- test.results[results[,1]==-1 & results[,2]==-1,]
    write.csv(c1.c2, paste0(out.dir,"/",comparison1,".",comparison2,"_down.csv"))
    c2 <- test.results[results[,1]!=-1 & results[,2]==-1,]
    write.csv(c2, paste0(out.dir,"/",comparison2,"_down.csv"))
}
