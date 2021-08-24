fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
# Download the file using the download file function
download.file(fileUrl, destfile = 'housing.csv', method = 'curl')

#load the data into R
dat <- read.csv(fileUrl)
table(dat$VAL==24)

# Download excel file 
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx "
download.file(fileUrl, destfile = "govtdata.xlsx", mode = "wb")

# Reading xlsx file 
library(xlsx)
dat <- read.xlsx("govtdata.xlsx", sheetIndex = 1, header = T, 
                 colIndex = 7:15, rowIndex = 18:23)


#read XML file 
library(XML)
library(httr)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
fileGET <- GET(fileUrl)

doc <- xmlTreeParse(fileGET, useInternalNodes = T, isURL = T)
rootNode <- xmlRoot(doc)

zc <- xpathSApply(rootNode, "//zipcode", xmlValue)
table(zc[zc == '21231'])

## download csv file Q5
furl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(furl, destfile = 'mydata.csv', method = 'curl')

## read the csv using fread command
DT <- read.csv("mydata.csv", header = T)
DT <- fread("mydata.csv")








