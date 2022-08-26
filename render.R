args = commandArgs(trailingOnly = TRUE)
library(rmarkdown)
library(prettydoc)
render(args[1])