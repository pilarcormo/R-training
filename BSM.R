data <- read.csv("http://www.ats.ucla.edu/stat/data/hsb2.csv")
summary(data)

data[,3]
data[2,]
data[c(1,3,5), 1] 

colnames(data)

data$id
data$female
data$prog

x <- data[data$female == 0,]$id 
y <- data[data$id > 50,]$id 

colnames(data)
by(data[, 7:11], data$prog, colMeans)

ggplot(data, aes(x = 1, y = write)) + geom_boxplot() + theme_bw()


ggplot(data, aes(x = write)) + geom_density() + facet_wrap(~ prog)



ggplot(data, aes(x = write, y= prog, fill=female)) + geom_jitter() +theme_bw()




+ geom_point(size = 3) + scale_colour_manual(values=palette2) +labs(x = "Coverage", y = "contig N50") + theme_bw() 
color_technology <- ggplot(contigs, aes(x = Sequence_lengths, y = N50_contig, colour = Technology_used)) + geom_point(size = 3)  + scale_colour_manual(values=palette, name = "Technology")  + labs(x = "Genome size (bp)", y = "N50 contig") + theme_bw()
color_technology <- color_technology + theme_minimal(base_size = 15)