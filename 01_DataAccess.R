library(fitdc)
library(tidyr)
library(purrr)



act <- read_fit("/cloud/project/A48I1219.FIT")
rec <- list()
for (i in 1:length(act)) {
  if (act[[i]]$name == 'record') {
  rec[i] <- act[i] 
  }
}

rec <- compact(rec)
