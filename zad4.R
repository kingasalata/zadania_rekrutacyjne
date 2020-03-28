delecje <- read.table(file.choose(), header =F)
insercje <- read.table(file.choose(), header=F)

wykres_delecje <- data.frame(delecje$V1, delecje$V2, delecje$V3)
wykres_insercje <- data.frame(insercje$V1, insercje$V2, insercje$V3)
library(dplyr)
library(ggplot2)

del = aggregate(wykres_delecje$delecje.V3 - wykres_delecje$delecje.V2, by = list(wykres_delecje$delecje.V1), FUN = 'sum')
ins = aggregate(wykres_insercje$insercje.V3 - wykres_insercje$insercje.V2, by = list(wykres_insercje$insercje.V1), FUN = 'sum')

del$type = "delecje"
ins$type = "insercje"

wykres <- rbind(del, ins)
colnames(wykres) = c("Chromosom", "D³ugoœæ_mutacji", "Rodzaj_mutacji")

ggplot(wykres, aes(x = Chromosom, y = D³ugoœæ_mutacji, fill = Rodzaj_mutacji)) +
  labs(x = 'Chromosom', y = 'D³ugoœæ mutacji', fill = 'Rodzaj mutacji') +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("red", "green")) + theme_bw() 
  
  