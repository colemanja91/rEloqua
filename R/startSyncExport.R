
#' Begins syncing data for an export definition
#'
#' @param login An eloquaLogin object
#' @param exportDefinition An httr POST return list created with defExport
#' @return An httr POST list with the status of call and sync URI
startSyncExport <- function(login, exportDefinition){
  exportDefContent <- content(exportDefinition)

  URL <- paste("https://secure.p0", login@pod,
               ".eloqua.com/API/Bulk/2.0/syncs", sep="")

  postPackage <- list(syncedInstanceUri = exportDefContent$uri)

  req <- POST(url = URL,
              authenticate(
                user = paste(login@company, "\\", login@username, sep=""),
                password = login@password,
                type = "basic"
              ),
              body = postPackage,
              encode= "json"
  )

  if (req$status == 201){
    print("Sync created successfully!")
  }else{
    print("Error; check returned object for more info")
  }

  return(req)

}
