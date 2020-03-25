library(vcfR)
data0 <- read.vcfR(file.choose(), verbose = FALSE)

fix <- getFIX(data0)

chrom <- create.chromR(name = 'RAD_data', vcf = data0)
plot(chrom)





