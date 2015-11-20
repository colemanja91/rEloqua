
#' Complete cycle of creating a sync and checking until finished
#'
#' @param login An eloquaLogin object
#' @param exportDefinition An httr POST return list created with defExport
#' @param maxTimeout Number of seconds to retry before timeout occurs
#' @return A list of two lists, results from startSyncExport and getSyncStatus, after the sync is completed (or timeout occurs)
syncExport <- function(login, exportDefinition, maxTimeout = 180){

  sync <- startSyncExport(login, exportDefinition)

  startSyncContent <- content(sync)
  syncStatus <- startSyncContent$status

  x <- 0

  while (syncStatus %in% c("pending", "active") & x <= maxTimeout){

    if (x == maxTimeout){
      warning("Stopping sync; timeout error")
    }

    Sys.sleep(x)

    x <- x+10

    reqSyncStatus <- getSyncStatus(login, sync)

    reqSyncContent <- content(reqSyncStatus)

    syncStatus <- reqSyncContent$status

    if (syncStatus == "error"){
      warning("Sync returned with a status of \"error\"")
    }

    if (syncStatus == "success"){
      print("Sync completed!")
    }else{
      print(paste("Sync in progress, checking again in ", x, " seconds", sep=""))
    }

  }

  results <- list(createSync = sync, lastSyncStatus = reqSyncStatus)

  return(results)

}
