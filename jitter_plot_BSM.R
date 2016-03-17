library(ggplot2)

data <- read.csv("~/R training/contigs.csv")

colnames(data)

####jitter plot

plot <- ggplot(data, aes(x = Sequence_lengths, y = N50_contig, colour = Technology_used)) + geom_jitter() + theme_bw() 
plot  

###change size of the points
plot + geom_point(size = 6) 

###add labels 
plot  + labs(x = "Size", y = "contig N50")


####don't plot everything

plot + xlim(0,1000000000)



###change colours from ColorBrewer pallete
library(RColorBrewer)
palette <- brewer.pal(9,"Greens")

pal <- colorRampPalette(palette)

plot + scale_colour_manual(values=palette, name = "Technology")




