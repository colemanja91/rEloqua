install.packages("devtools")
devtools::install_github("colemanja91/rEloqua")
library(rEloqua)

## Setup login object

myLogin <- eloquaLogin(pod = 1, company = "myCompany", username = "myUsername", password = "myPassword")


## Create an export definition for Web Visit Activities, filtering for 2015-11-19

filters <- list(ActivityDate = c(operator = ">=", value = "2015-11-19 00:00:00"),
                ActivityDate = c(operator = "<", value = "2015-11-20 00:00:00"))

myExportDef <- defExport(login = myLogin, type = "WebVisit", bulkFilter = filters,
                         exportName = "20151120 - Web Visit Test Export")

## Sync data to the export

mySync <- syncExport(login = myLogin, exportDefinition = myExportDef)

## Get data from the export

myData <- getExportData(login = myLogin, exportDefinition = myExportDef)

## Extract the data into a dataframe

myDataExtracted <- extractExportData(myData)

## If desired, export to a CSV

write.csv(myDataExtracted, "WebVisits.csv")
