library(ggplot2)
library("RColorBrewer")
#########################################
dat <- read.table("snp_manhattan.txt",header = TRUE, sep="\t")

pdf("snp.pdf")
ggplot(dat,aes(x=BP,y=P,colour=CHR)) + facet_grid(.~CHR,scales="free_x",space="free_x") +
  geom_point() + xlab("Position") + ylab("Number") +
 theme(axis.text.x = element_text(size = 7))
dev.off()

#############################################


dat2 <- read.table("indel_manhattan.txt",header = TRUE, sep="\t")

pdf("indel.pdf")
ggplot(dat2,aes(x=BP,y=P,colour=CHR)) + facet_grid(.~CHR,scales="free_x",space="free_x") +
	geom_point() + xlab("Position") + ylab("Number") +
	theme(axis.text.x = element_text(size = 7))
dev.off()

########################################################

