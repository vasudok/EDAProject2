library(dplyr)
library(ggplot2)

png(filename = "/Users/vasudok/R Programming/Coursera R/EDAProject2/plot3.png")

ggplot(baltimore,aes(factor(year),Emissions)) +
  geom_bar(stat="identity") +
  facet_grid(.~type) + 
  labs(x = "Year", y = "PM2.5 Emission (Tons)") + 
  labs(title = "PM2.5 Emissions Per Year in Baltimore City By Type")

dev.off()