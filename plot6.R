la <- subset(NEI, NEI$fips == 06037)
lapm25 <- c(sum(la$Emissions[la$year == 1999]), sum(la$Emissions[la$year == 2002]), sum(la$Emissions[la$year == 2005]), sum(la$Emissions[la$year == 2008]))

par(mfrow = c(2, 1))

barplot(baltpm25, xlab = "Year", names.arg = c("1999", "2002", "2005", "2008"), ylab = "PM 2.5 emissions (tons)", main = "Total PM 2.5 Emissions Per Year in Baltimore")
barplot(lapm25, xlab = "Year", names.arg = c("1999", "2002", "2005", "2008"), ylab = "PM 2.5 emissions (tons)", main = "Total PM 2.5 Emissions Per Year in Los Angeles")
