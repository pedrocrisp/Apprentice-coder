a <- read.csv("TouchData.csv", header=T, quote='')
#a <- read.csv("week3_nazia/TouchData.csv", header=T, quote='')

summary(a)
str(a)

A<-a[a$Measurement=='measurementA',-5]
B<-a[a$Measurement=='measurementB',-5]
C<-a[a$Measurement=='measurementC',-5]
summary(A)
summary(B)
summary(C)
?aov
?boxplot
boxplot(Value~Genotype+Treatment,data=C)
a_aov<-aov(Value~Genotype*Treatment+Measurement,data=a)
summary(a_aov)
A_aov<-aov(Value~Genotype*Treatment,data=A)
summary(A_aov)
B_aov<-aov(Value~Genotype*Treatment,data=B)
summary(B_aov)
C_aov<-aov(Value~Genotype*Treatment,data=C)
summary(C_aov)
pairs(a)

library(ggplot2)
library(plyr)

Data <- ddply(a, c("Genotype","Treatment","Measurement"), summarise,
              mean = mean(Value, na.rm=TRUE),
              sd = sd(Value,na.rm=TRUE),
              n = sum(!is.na(Value)),
              se = sd/sqrt(n))

ggplot(Data, aes(x=Genotype, y=mean,fill=Treatment )) +
  geom_bar(stat="identity", 
#            fill="grey", 
#            colour="black", 
           position="dodge") +
  geom_errorbar(aes(ymin=mean-se, 
                    ymax=mean+se), 
                width=.2, 
                position=position_dodge(width = 0.90)) +
  facet_wrap(~Measurement)
  
  
  
#   ylab("Drought Survival (days)") +
#   #scale_y_continuous(limits=c(0, 10)) +
#   #scale_fiA_manual(values = c("white", "grey")) +
#   theme(axis.title.x=element_blank(),
#         axis.text.x = element_text(size=rel(0.8)),
#         axis.title.y=element_text(size = rel(0.7)),
#         panel.grid.major = element_blank(),
#         panel.grid.minor = element_blank(),
#         panel.border=element_blank(),
#         axis.line=element_line(),
#         # legend.position=c(0.85,0.8), 
#         legend.text = element_text(size =5),
#         legend.title = element_text(size =10))


