library(plotly)
setwd("C:/Users/Tu/Desktop/Junior Year/Fall/INFO 370 Data Science/Final Project/steroid-era-mlb-godwinners")

GL <- read.csv('Data/GL2008.csv')

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

gl1990 <- read.csv('Data/GL1990.csv')
gl1991 <- read.csv('Data/GL1991.csv')
gl1992 <- read.csv('Data/GL1992.csv')
gl1993 <- read.csv('Data/GL1993.csv')
gl1994 <- read.csv('Data/GL1994.csv')
gl1995 <- read.csv('Data/GL1995.csv')
gl1996 <- read.csv('Data/GL1996.csv')
gl1997 <- read.csv('Data/GL1997.csv')
gl1998 <- read.csv('Data/GL1998.csv')
gl1999 <- read.csv('Data/GL1999.csv')
gl2000 <- read.csv('Data/GL2000.csv')
gl2001 <- read.csv('Data/GL2001.csv')
gl2002 <- read.csv('Data/GL2002.csv')
gl2003 <- read.csv('Data/GL2003.csv')
gl2004 <- read.csv('Data/GL2004.csv')
gl2005 <- read.csv('Data/GL2005.csv')
gl2006 <- read.csv('Data/GL2006.csv')
gl2007 <- read.csv('Data/GL2007.csv')
gl2008 <- read.csv('Data/GL2008.csv')

attendance <- c(sum(msc1990$Attend.G) / length(msc1990$Attend.G), sum(msc1991$Attend.G) / length(msc1991$Attend.G), 
                         sum(msc1992$Attend.G) / length(msc1992$Attend.G), sum(msc1993$Attend.G) / length(msc1993$Attend.G),
                         sum(msc1994$Attend.G) / length(msc1994$Attend.G), sum(msc1995$Attend.G) / length(msc1995$Attend.G), 
                         sum(msc1996$Attend.G) / length(msc1996$Attend.G), sum(msc1997$Attend.G) / length(msc1997$Attend.G),
                         sum(msc1998$Attend.G) / length(msc1998$Attend.G), sum(msc1999$Attend.G) / length(msc1999$Attend.G), 
                         sum(msc2000$Attend.G) / length(msc2000$Attend.G), sum(msc2001$Attend.G) / length(msc2001$Attend.G),
                         sum(msc2002$Attend.G) / length(msc2002$Attend.G), sum(msc2003$Attend.G) / length(msc2003$Attend.G), 
                         sum(msc2004$Attend.G) / length(msc2004$Attend.G), sum(msc2005$Attend.G) / length(msc2005$Attend.G),
                         sum(msc2006$Attend.G) / length(msc2006$Attend.G), sum(msc2007$Attend.G) / length(msc2007$Attend.G), 
                         sum(msc2008$Attend.G) / length(msc2008$Attend.G))

pre.steroid <- attendance[1:6] 
during.steroid <- attendance[7:13]
after.steroid <- attendance[14:19]

min(attendance)
max(attendance)
sd(attendance)
mean(attendance)
median(attendance)


sd(pre.steroid)
sd(during.steroid)


t.test(pre.steroid, during.steroid)
t.test(during.steroid, after.steroid)



plot(attendance, type = "o", col = "red", xlab = "Years", ylab = "Average People Per Game",
     main = "Average Yearly Attendance Per Game", x = c(1990:2008))

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


min(payroll)
max(payroll)
sd(payroll)
mean(payroll)
median(payroll)

plot(payroll, type = "o", col = "red", xlab = "Years", ylab = "Average Payroll Per Team ($)",
     main = "Average Team Payroll Per Year", x = c(1990:2008))
