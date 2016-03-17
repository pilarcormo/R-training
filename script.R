
install.packages("ggplot2")
library(ggplot2)

data <- read.csv("http://www.ats.ucla.edu/stat/data/hsb2.csv")

head(data)
tail(data)
dim(data)
summary(data)

new_var <- data[2,]
new_var
data[,5]

data[1, c(1,5)] 

colnames(data)
data$read
data$id
data$female
data[data$female == 1,]$id
data[data$id > 50,]$prog

by(data[, 7:11], data$female, colMeans)

write.table(data, "~/Desktop/new.txt")

plot <- ggplot(data, aes(x = female, y = prog)) + geom_jitter()

plot + theme_bw()


score_write <- ggplot(data, aes(x = write)) + geom_density() + theme_bw()
ggplot(data, aes(x = write)) + geom_density() + facet_wrap(~ prog)
?ggplot2




ggplot(data, aes(x = factor(prog), y = math)) + geom_boxplot() 



