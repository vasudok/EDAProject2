coalcombust <- intersect(grep("coal", SCC$Short.Name, ignore.case = T), 
                         grep("combustion", SCC$Short.Name, ignore.case = T))

coalcombustdata <- NEI[which(NEI$SCC %in% SCC[ coalcombust, "SCC"]),]

png(filename = "/Users/vasudok/R Programming/Coursera R/EDAProject2/plot4.png")

ggplot(coalcombustdata, aes(year,Emissions, fill = year)) +
  geom_histogram(stat = "summary") + 
  labs(y="PM2.5 Emission (Tons)", x = "Year") +
  labs(title = "Emissions From Coal Combustion Sources Per Year")

dev.off()