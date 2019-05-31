download.file("https://raw.githubusercontent.com/datacarpentry/R-genomics/gh-pages/data/Ecoli_metadata.csv", destfile = "Desktop/R studio/Ecoli.csv")

metadata <- read.csv("~/Desktop/R studio/Ecoli.csv", stringsAsFactors = FALSE)

head (metadata)
library (ggplot2)

ggplot(metadata, aes (x=sample, y=genome_size, color)) + geom_point() + scale_color_viridis_c()

ggplot(metadata, aes (x=sample, y=genome_size, color=strain)) + geom_point() +
  labels(x="Sample #", y="Genome Size", title ="Genome sizes", subtitle = "Exploring the data", caption = "Source:Ecoli")

ggplot (metadata, aes(x = sample, y = genome_size, by=cit)) + geom_point(color="blue", size=4)

ggplot (metadata, aes(x = cit, y = genome_size)) + geom_boxplot(color="blue", size=1)

ggplot (metadata, aes(x = genome_size)) + geom_histogram()

ggplot (metadata, aes(x = genome_size)) + geom_histogram(binwidth = 0.01)


dir.create("scripts")
dir.create("data")
