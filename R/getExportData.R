
#' Loop through the synced export data and return to a list of lists
#'
#' @param login An eloquaLogin object
#' @param exportDefinition An httr POST return list created with defExport
#' @return A list of lists containint the httr GET responses from the /activities/export/{id}/data endpoint
getExportData <- function(login, exportDefinition){
  exportData <- list()

  exportDefContent <- content(exportDefinition)

  URL <- paste("https://secure.p0", login@pod,
               ".eloqua.com/API/Bulk/2.0", exportDefContent$uri, "/data?limit=50000", sep="")

  offset <- 0

  hasMore <- TRUE

  while (hasMore){

    URI <- paste(URL, "&offset=", as.character(format(offset*50000, scientific = FALSE)), sep="")

    print(URI)

    req <- GET(url = URI,
               authenticate(
                 user = paste(login@company, "\\", login@username, sep=""),
                 password = login@password,
                 type = "basic"
               ))

    exportData[[length(exportData)+1]] <- req

    content <- content(req)

    hasMore <- content$hasMore

    offset <- offset+1

    if (hasMore){
      print("Has more records...")
    }else{
      print("Finished!")
    }

  }

  return(exportData)

}
