#!/usr/bin/R
library("FactoMineR")
library("factoextra")

data <- read.table("SNP_test.eigenvec",header = TRUE,sep="\t")
data3 <- data[,-1]
data2 <- as.data.frame(data3)
pdf("SNP_test_pca.pdf")
ggplot(data2, aes(x=data$PC1,y=data$PC2,color=data$IID)) + geom_point(shape=19,size=4) +
  scale_shape_manual(values=c(1:8))  + labs(title="PCA",x="PC1",y="PC2")  +
  theme(plot.title = element_text(hjust = 0.5))
dev.off()

###################################################################################

#####
1. first get eigenvec file by plink :

plink --maf 0.05 --allow-extra-chr --vcf SNP.vcf --pca header tabs -out SNP_test

2.  use above R to draw figure
