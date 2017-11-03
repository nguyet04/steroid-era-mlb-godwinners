library(plotly)

msc1990 <- read.csv('Data/MSC1990.csv')
msc1991 <- read.csv('Data/MSC1991.csv')
msc1992 <- read.csv('Data/MSC1992.csv')
msc1993 <- read.csv('Data/MSC1993.csv')
msc1994 <- read.csv('Data/MSC1994.csv')
msc1995 <- read.csv('Data/MSC1995.csv')
msc1996 <- read.csv('Data/MSC1996.csv')
msc1997 <- read.csv('Data/MSC1997.csv')
msc1998 <- read.csv('Data/MSC1998.csv')
msc1999 <- read.csv('Data/MSC1999.csv')
msc2000 <- read.csv('Data/MSC2000.csv')
msc2001 <- read.csv('Data/MSC2001.csv')
msc2002 <- read.csv('Data/MSC2002.csv')
msc2003 <- read.csv('Data/MSC2003.csv')
msc2004 <- read.csv('Data/MSC2004.csv')
msc2005 <- read.csv('Data/MSC2005.csv')
msc2006 <- read.csv('Data/MSC2006.csv')
msc2007 <- read.csv('Data/MSC2007.csv')
msc2008 <- read.csv('Data/MSC2008.csv')

attendance <- c(sum(msc1990$Attendance) / length(msc1990$Attendance), sum(msc1991$Attendance) / length(msc1991$Attendance), 
                         sum(msc1992$Attendance) / length(msc1992$Attendance), sum(msc1993$Attendance) / length(msc1993$Attendance),
                         sum(msc1994$Attendance) / length(msc1994$Attendance), sum(msc1995$Attendance) / length(msc1995$Attendance), 
                         sum(msc1996$Attendance) / length(msc1996$Attendance), sum(msc1997$Attendance) / length(msc1997$Attendance),
                         sum(msc1998$Attendance) / length(msc1998$Attendance), sum(msc1999$Attendance) / length(msc1999$Attendance), 
                         sum(msc2000$Attendance) / length(msc2000$Attendance), sum(msc2001$Attendance) / length(msc2001$Attendance),
                         sum(msc2002$Attendance) / length(msc2002$Attendance), sum(msc2003$Attendance) / length(msc2003$Attendance), 
                         sum(msc2004$Attendance) / length(msc2004$Attendance), sum(msc2005$Attendance) / length(msc2005$Attendance),
                         sum(msc2006$Attendance) / length(msc2006$Attendance), sum(msc2007$Attendance) / length(msc2007$Attendance), 
                         sum(msc2008$Attendance) / length(msc2008$Attendance))


plot(attendance, type = "o", col = "red", xlab = "Years", ylab = "Average Attendance Per Team (People)",
     main = "Average Team Attendance Per Year")

# Time to convert the $ into int
msc1990$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1990$Est..Payroll))
msc1991$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1991$Est..Payroll))
msc1992$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1992$Est..Payroll))
msc1993$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1993$Est..Payroll))
msc1994$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1994$Est..Payroll))
msc1995$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1995$Est..Payroll))
msc1996$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1996$Est..Payroll))
msc1997$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1997$Est..Payroll))
msc1998$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1998$Est..Payroll))
msc1999$Est..Payroll <- as.numeric(gsub('[$,]', '', msc1999$Est..Payroll))
msc2000$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2000$Est..Payroll))
msc2001$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2001$Est..Payroll))
msc2002$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2002$Est..Payroll))
msc2003$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2003$Est..Payroll))
msc2004$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2004$Est..Payroll))
msc2005$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2005$Est..Payroll))
msc2006$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2006$Est..Payroll))
msc2007$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2007$Est..Payroll))
msc2008$Est..Payroll <- as.numeric(gsub('[$,]', '', msc2008$Est..Payroll))

payroll <- c(sum(msc1990$Est..Payroll) / length(msc1990$Est..Payroll), sum(msc1991$Est..Payroll) / length(msc1991$Est..Payroll), sum(msc1992$Est..Payroll) / length(msc1992$Est..Payroll), sum(msc1993$Est..Payroll) / length(msc1993$Est..Payroll), 
             sum(msc1994$Est..Payroll) / length(msc1994$Est..Payroll), sum(msc1995$Est..Payroll) / length(msc1995$Est..Payroll), sum(msc1996$Est..Payroll) / length(msc1996$Est..Payroll), sum(msc1997$Est..Payroll) / length(msc1997$Est..Payroll), 
             sum(msc1998$Est..Payroll) / length(msc1998$Est..Payroll), sum(msc1999$Est..Payroll) / length(msc1999$Est..Payroll), sum(msc2000$Est..Payroll) / length(msc2000$Est..Payroll), sum(msc2001$Est..Payroll) / length(msc2001$Est..Payroll), 
             sum(msc2002$Est..Payroll) / length(msc2002$Est..Payroll), sum(msc2003$Est..Payroll) / length(msc2003$Est..Payroll), sum(msc2004$Est..Payroll) / length(msc2004$Est..Payroll), sum(msc2005$Est..Payroll) / length(msc2005$Est..Payroll), 
             sum(msc2006$Est..Payroll) / length(msc2006$Est..Payroll), sum(msc2007$Est..Payroll) / length(msc2007$Est..Payroll), sum(msc2008$Est..Payroll) / length(msc2008$Est..Payroll))

plot(payroll, type = "o", col = "red", xlab = "Years", ylab = "Average Payroll Per Team",
     main = "Average Team Payroll Per Year")
