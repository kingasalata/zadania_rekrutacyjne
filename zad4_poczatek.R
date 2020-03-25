delecje <- read.table(file.choose(), header=F)
insercje <- read.table(file.choose(), header=F)

wykres <- data.frame(delecje$V1, delecje$V2, delecje$V3)
library(dplyr)

Chr1 <- wykres %>% filter(delecje.V1 == "1")
sum(Chr1$delecje.V3 - Chr1$delecje.V2)

#chromosomy <- c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22','X', 'Y')
#wyniki <-c()

