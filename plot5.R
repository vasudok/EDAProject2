motor <- grep("motor", SCC$Short.Name, ignore.case = T)
motordata <- baltimore[which(baltimore$SCC %in% SCC[motor, "SCC"]),]

png(filename = "/Users/vasudok/R Programming/Coursera R/EDAProject2/plot5.png")

ggplot(motordata, aes(year,Emissions, fill = year)) +
  geom_histogram(stat = "summary") + 
  labs(y="PM2.5 Emission (Tons)", x = "Year") +
  labs(title = "Motor Vehicle Emissions in Baltimore Per Year")

dev.off()