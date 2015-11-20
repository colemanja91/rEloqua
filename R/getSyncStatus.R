#' Get the status of a previously created sync
#'
#' @param login An eloquaLogin object
#' @param syncResponse An httr POST return list created with startSyncExport
#' @return An httr POST list with the status of the sync
getSyncStatus <- function(login, syncResponse){
  syncContent <- content(syncResponse)

  URL <- paste("https://secure.p0", login@pod,
               ".eloqua.com/API/Bulk/2.0", syncContent$uri, sep="")

  req <- GET(url = URL,
             authenticate(
               user = paste(login@company, "\\", login@username, sep=""),
               password = login@password,
               type = "basic"
             ))

  return(req)

}
