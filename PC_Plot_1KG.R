args <- commandArgs(TRUE)
root <- args[1]
PCAEVEC<-read.table(paste(root,".1kg.LD_pop_strat.pca.evec_RENAMED",sep=""), head=T)
colnames(PCAEVEC) <- c("ID","PC1","PC2","PC3","PC4","PC5","PC6","PC7","PC8","PC9","PC10","Pop")
library(ggplot2)
pdf(paste(root,"1kg.LD_pop_strat_PCA.pdf",sep=""))
with(PCAEVEC, qplot(PC1,PC2,colour=Pop))
with(PCAEVEC, qplot(PC1,PC3,colour=Pop))
with(PCAEVEC, qplot(PC1,PC4,colour=Pop))
with(PCAEVEC, qplot(PC1,PC5,colour=Pop))
with(PCAEVEC, qplot(PC2,PC3,colour=Pop))
with(PCAEVEC, qplot(PC2,PC4,colour=Pop))
with(PCAEVEC, qplot(PC2,PC5,colour=Pop))
with(PCAEVEC, qplot(PC3,PC4,colour=Pop))
with(PCAEVEC, qplot(PC3,PC5,colour=Pop))
with(PCAEVEC, qplot(PC4,PC5,colour=Pop))
dev.off()
