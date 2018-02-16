setwd('E:/DataSets')

d = read.csv('flavors_of_cacao.csv')

install.packages('DataExplorer') 
library(DataExplorer)

View(d)

d$Cocoa.Percent = as.numeric(gsub('%','',d$Cocoa.Percent))
d$Review.Date = as.character(d$Review.Date)

View(d)

#Data Dictionary
plot_str(d)

#Missing Value Analysis
plot_missing(d)


#test for normal distriubution
plot_histogram(d)
plot_density(d)


