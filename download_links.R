setwd("~/Downolad_all")

folderpath <- paste0(getwd(), "/Files/")
library(pangaear)

table<-pg_data(doi="10.1594/PANGAEA.910179")
table<-table[[1]]$data

for (i in (1:nrow(table))){
  download.file(as.character(table$'URL file'[i]), destfile = paste0(folderpath, table$'File name'[i]))
}
