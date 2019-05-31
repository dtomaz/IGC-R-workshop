download.file("https://raw.githubusercontent.com/datacarpentry/R-genomics/gh-pages/data/Ecoli_metadata.csv", destfile = "Desktop/R studio/Ecoli.csv")
metadata <- read.csv("~/Desktop/R studio/Ecoli.csv", stringsAsFactors = FALSE)
