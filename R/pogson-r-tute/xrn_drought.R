##### Packages #####

library(ggplot2)
theme_set(theme_bw())
library(plyr)
library(reshape2)
library(grDevices)

##### Data #####
DataDir <- "drought/"

DataRaw <- read.csv(paste0(DataDir, "xrn_drought.csv"))
names(DataRaw) <- c("Col-0",
                    "ein5-6", 
                    "xrn4-6",
                    "xrn2xrn3",
                    "fry1-6",
                    "alx8")
DataMelt <- melt(DataRaw)
names(DataMelt) <- c("Genotype", "Survival")

Data <- ddply(DataMelt, c("Genotype"), summarise,
              Survival_days = mean(Survival, na.rm=TRUE),
              sd = sd(Survival, na.rm=TRUE),
              n = sum(!is.na(Survival)),
              se = sd/sqrt(n))

levels(Data$Genotype)
Data$Genotype <- factor(Data$Genotype, 
                        levels=c("Col-0",
                                 "ein5-6", 
                                 "xrn4-6",
                                 "xrn2xrn3",
                                 "fry1-6",
                                 "alx8")) 

##### Plots #####

pdf(paste0(DataDir, "xrn_drought.pdf"), width=12/2.54, height=8/2.54)
plotData <- Data
#grey.pallet <- gray.colors(length(unique(plotData$Amplicon)), start = 0.3, end = 0.9, gamma = 2.2, alpha = NULL)
ggplot(plotData, aes(x=Genotype, y=Survival_days, 
                     #fill=Treatment
                     )) +
  geom_bar(stat="identity", 
           fill="grey", 
           colour="black", 
           position="dodge") +
  geom_errorbar(aes(ymin=Survival_days-se, 
                    ymax=Survival_days+se), 
                width=.2, 
                position=position_dodge(width = 0.90)) +
  ylab("Drought Survival (days)") +
  #scale_y_continuous(limits=c(0, 10)) +
  #scale_fill_manual(values = c("white", "grey")) +
  theme(axis.title.x=element_blank(),
        axis.text.x = element_text(size=rel(0.8)),
        axis.title.y=element_text(size = rel(0.7)),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border=element_blank(),
        axis.line=element_line(),
        # legend.position=c(0.85,0.8), 
        legend.text = element_text(size =5),
        legend.title = element_text(size =10))
dev.off()

##### stats #####
### paired t tests
pt.test <- function(test.sample){
  tests <- c("Col-0", test.sample)
  with(DataMelt[which(DataMelt$Genotype %in% tests),],
       t.test(Survival~Genotype, var.equal=T, conf.level=.95))
}

samples <- c("ein5-6", 
             "xrn4-6",
             "xrn2xrn3",
             "fry1-6",
             "alx8")

lapply(samples, function(x) pt.test(x))

### anova and TukeyHSD

a <- with(DataMelt, aov(Survival~Genotype))
summary(a)
hsd <- TukeyHSD(a)
print(hsd)
print(lapply(hsd, function(h) h[which(h[,4]<0.05),]))
