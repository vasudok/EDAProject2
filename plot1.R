NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

totalpm25 <- c(sum(NEI$Emissions[NEI$year == 1999]), sum(NEI$Emissions[NEI$year == 2002]), sum(NEI$Emissions[NEI$year == 2005]), sum(NEI$Emissions[NEI$year == 2008]))
png(filename = "/Users/vasudok/R Programming/Coursera R/EDAProject2/plot1.png")
barplot(totalpm25, xlab = "Year", names.arg = c("1999", "2002", "2005", "2008"), ylab = "PM 2.5 emissions (tons)", main = "Total PM 2.5 Emissions Per Year")
dev.off()