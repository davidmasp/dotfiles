#!/usr/local/bin/Rscript



### IMPORTS ###

library(ggplot2)
library(dplyr)
library(tidyr)


### Run the system command ###

x = system("du -s *",intern = TRUE)

a = unlist(strsplit(x,"\t"))

v1 = a[seq(from=1,to=length(a),by=2)]
v2 = a[seq(from=2,to=length(a),by=2)]

df = data.frame(value = as.numeric(v1), label = v2)

df$label = ordered(df$label, levels = df[order(df$value),]$label)


g = ggplot(data = df[order(df$value),],aes(x = label, y = value)) + 
	geom_bar(stat = "identity") +
	theme(axis.text = element_text(angle = 90))

pdf(file="du_report.pdf")
g
dev.off()