#' Create a set of authentication credentials required for Eloqua
#'
#' @param pod The pod your Eloqua instance resides in (used to create the UIR string)
#' @param company The company/name of your Eloqua instance
#' @param username Your username
#' @param password Your password
#' @example
#' login <- eloquaLogin(1, "mycompany", "myuser", "mypassword")
eloquaLogin <- setClass(Class = "eloquaLogin",
                        slots = c(pod = "numeric", company = "character",
                                  username = "character", password = "character"))


## Define Eloqua Activity export types

#' Named list of activity objects available for export via Bulk API
#'
#' @description Contains the available Eloqua activity types and their respective fields
eloquaActivities <- list(

  PageView = list(
    "ActivityId" = "{{Activity.Id}}",
    "ActivityType" = "{{Activity.Type}}",
    "ActivityDate" = "{{Activity.CreatedAt}}",
    "ContactId" = "{{Activity.Contact.Id}}",
    "CampaignId" = "{{Activity.Campaign.Id}}",
    "VisitorId" = "{{Activity.Visitor.Id}}",
    "VisitorExternalId" = "{{Activity.Visitor.ExternalId}}",
    "WebVisitId" = "{{Activity.Field(WebVisitId)}}",
    "Url" = "{{Activity.Field(Url)}}",
    "ReferrerUrl" = "{{Activity.Field(ReferrerUrl)}}",
    "IpAddress" = "{{Activity.Field(IpAddress)}}",
    "IsWebTrackingOptedIn" = "{{Activity.Field(IsWebTrackingOptedIn)}}",
    "ExternalId" = "{{Activity.ExternalId}}"
  ),

  WebVisit = list(
    "ActivityId" = "{{Activity.Id}}",
    "ActivityType" = "{{Activity.Type}}",
    "ActivityDate" = "{{Activity.CreatedAt}}",
    "ContactId" = "{{Activity.Contact.Id}}",
    "VisitorId" = "{{Activity.Visitor.Id}}",
    "VisitorExternalId" = "{{Activity.Visitor.ExternalId}}",
    "ReferrerUrl" = "{{Activity.Field(ReferrerUrl)}}",
    "IpAddress" = "{{Activity.Field(IpAddress)}}",
    "NumberOfPages" = "{{Activity.Field(NumberOfPages)}}",
    "FirstPageViewUrl" = "{{Activity.Field(FirstPageViewUrl)}}",
    "Duration" = "{{Activity.Field(Duration)}}",
    "ExternalId" = "{{Activity.ExternalId}}"
  ),

  FormSubmit = list(
    "ActivityId" = "{{Activity.Id}}",
    "ActivityType" = "{{Activity.Type}}",
    "ActivityDate" = "{{Activity.CreatedAt}}",
    "ContactId" = "{{Activity.Contact.Id}}",
    "VisitorId" = "{{Activity.Visitor.Id}}",
    "VisitorExternalId" = "{{Activity.Visitor.ExternalId}}",
    "AssetType" = "{{Activity.Asset.Type}}",
    "AssetId" = "{{Activity.Asset.Id}}",
    "AssetName" = "{{Activity.Asset.Name}}",
    "RawData" = "{{Activity.Field(RawData)}}",
    "CampaignId" = "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}"
  ),

  FormSubmitNoRaw = list(
    "ActivityId" = "{{Activity.Id}}",
    "ActivityType" = "{{Activity.Type}}",
    "ActivityDate" = "{{Activity.CreatedAt}}",
    "ContactId" = "{{Activity.Contact.Id}}",
    "VisitorId" = "{{Activity.Visitor.Id}}",
    "VisitorExternalId" = "{{Activity.Visitor.ExternalId}}",
    "AssetType" = "{{Activity.Asset.Type}}",
    "AssetId" = "{{Activity.Asset.Id}}",
    "AssetName" = "{{Activity.Asset.Name}}",
    "CampaignId" = "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}"
  ),

  EmailSend = list(
    "ActivityId" =  "{{Activity.Id}}",
    "ActivityType" =  "{{Activity.Type}}",
    "ActivityDate" =  "{{Activity.CreatedAt}}",
    "EmailAddress" =  "{{Activity.Field(EmailAddress)}}",
    "ContactId" =  "{{Activity.Contact.Id}}",
    "EmailRecipientId" =  "{{Activity.Field(EmailRecipientId)}}",
    "AssetType" =  "{{Activity.Asset.Type}}",
    "AssetId" =  "{{Activity.Asset.Id}}",
    "AssetName" =  "{{Activity.Asset.Name}}",
    "SubjectLine" =  "{{Activity.Field(SubjectLine)}}",
    "EmailWebLink" =  "{{Activity.Field(EmailWebLink)}}",
    "CampaignId" =  "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}",
    "EmailSendType" =  "{{Activity.Field(EmailSendType)}}"
  ),

  EmailOpen = list(
    "ActivityId" =  "{{Activity.Id}}",
    "ActivityType" =  "{{Activity.Type}}",
    "ActivityDate" =  "{{Activity.CreatedAt}}",
    "EmailAddress" =  "{{Activity.Field(EmailAddress)}}",
    "ContactId" =  "{{Activity.Contact.Id}}",
    "IpAddress" =  "{{Activity.Field(IpAddress)}}",
    "VisitorId" =  "{{Activity.Visitor.Id}}",
    "EmailRecipientId" =  "{{Activity.Field(EmailRecipientId)}}",
    "AssetType" =  "{{Activity.Asset.Type}}",
    "AssetName" =  "{{Activity.Asset.Name}}",
    "AssetId" =  "{{Activity.Asset.Id}}",
    "SubjectLine" =  "{{Activity.Field(SubjectLine)}}",
    "EmailWebLink" =  "{{Activity.Field(EmailWebLink)}}",
    "VisitorExternalId" =  "{{Activity.Visitor.ExternalId}}",
    "CampaignId" =  "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}",
    "EmailSendType" =  "{{Activity.Field(EmailSendType)}}"
  ),

  EmailClick = list(
    "ActivityId" =  "{{Activity.Id}}",
    "ActivityType" =  "{{Activity.Type}}",
    "ActivityDate" =  "{{Activity.CreatedAt}}",
    "EmailAddress" =  "{{Activity.Field(EmailAddress)}}",
    "ContactId" =  "{{Activity.Contact.Id}}",
    "IpAddress" =  "{{Activity.Field(IpAddress)}}",
    "VisitorId" =  "{{Activity.Visitor.Id}}",
    "EmailRecipientId" =  "{{Activity.Field(EmailRecipientId)}}",
    "AssetType" =  "{{Activity.Asset.Type}}",
    "AssetName" =  "{{Activity.Asset.Name}}",
    "AssetId" =  "{{Activity.Asset.Id}}",
    "SubjectLine" =  "{{Activity.Field(SubjectLine)}}",
    "EmailWebLink" =  "{{Activity.Field(EmailWebLink)}}",
    "EmailClickedThruLink" =  "{{Activity.Field(EmailClickedThruLink)}}",
    "VisitorExternalId" =  "{{Activity.Visitor.ExternalId}}",
    "CampaignId" =  "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}",
    "EmailSendType" =  "{{Activity.Field(EmailSendType)}}"
  ),

  Subscribe = list(
    "ActivityId" = "{{Activity.Id}}",
    "ActivityType" = "{{Activity.Type}}",
    "AssetId" = "{{Activity.Asset.Id}}",
    "ActivityDate" = "{{Activity.CreatedAt}}",
    "EmailAddress" = "{{Activity.Field(EmailAddress)}}",
    "EmailRecipientId" = "{{Activity.Field(EmailRecipientId)}}",
    "AssetType" = "{{Activity.Asset.Type}}",
    "AssetName" = "{{Activity.Asset.Name}}",
    "CampaignId" = "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}"
  ),

  Unsubscribe = list(
    "ActivityId" = "{{Activity.Id}}",
    "ActivityType" = "{{Activity.Type}}",
    "AssetId" = "{{Activity.Asset.Id}}",
    "ActivityDate" = "{{Activity.CreatedAt}}",
    "EmailAddress" = "{{Activity.Field(EmailAddress)}}",
    "EmailRecipientId" = "{{Activity.Field(EmailRecipientId)}}",
    "AssetType" = "{{Activity.Asset.Type}}",
    "AssetName" = "{{Activity.Asset.Name}}",
    "CampaignId" = "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}"
  ),

  Bounceback = list(
    "ActivityId" = "{{Activity.Id}}",
    "ActivityType" = "{{Activity.Type}}",
    "ActivityDate" = "{{Activity.CreatedAt}}",
    "EmailAddress" = "{{Activity.Field(EmailAddress)}}",
    "AssetId" = "{{Activity.Asset.Id}}",
    "AssetType" = "{{Activity.Asset.Type}}",
    "AssetName" = "{{Activity.Asset.Name}}",
    "CampaignId" = "{{Activity.Campaign.Id}}",
    "ExternalId" = "{{Activity.ExternalId}}"
  )
)

## Generalized activity export definition builder

#' Create an export definition
#'
#' @param login An eloquaLogin object
#' @param type The type of export to create. Accepted values are contained in eloquaActivities
#' @param fields A vector of the desired field names. If null, defaults to all available fields
#' @param bulkFilter A named list containing filter parameters; example: list("ActivityDate" = c(operator = ">", value = "2015-11-20 00:00:00"))
#' @param exportName A name to give to the export. If null, defaults to "Bulk API Export + (Timestamp)"
#' @return A list; return of POST request to the export definition API endpoint
#' @example
#' login <- eloquaLogin(pod = 1, company = "myCompany", username = "myUser", password = "myPassword")
#' filter <- list("ActivityDate" = c(operator = ">", value = "2015-11-20 00:00:00"))
#' myExport <- defExport(login, "WebVisit", bulkFilter = filter, exportName = "My Web Visit Activity Export")
defExport <- function(login, type, fields = NULL, bulkFilter = list(),
                      exportName = paste("Bulk API Export ", Sys.Date(), sep="")){

  ## Check if specified activity type is supported
  if (!type %in% names(eloquaActivities)){
    stop("The specified activity type (", type, ") is not available.")
  }

  ## Warn if creating export with no filters
  if (length(bulkFilter) == 0){
    warning("No filters specified for export. This is not recommended!")
  }

  ## Warn if exporting the "RawData" field on FormSubmits


  ## Use pod to create POST URL

  URL <- paste("https://secure.p0", login@pod,
               ".eloqua.com/API/Bulk/2.0/activities/exports/", sep="")

  ## export fields

  if (is.null(fields)){
    exportFields <- eloquaActivities[type]
    exportFields <- exportFields[[1]]
  }else{
    exportFields <- eloquaActivities[type]
    exportFields <- exportFields[fields]
    exportFields <- exportFields[[1]]
  }

  ## Create filter criteria

  # Add activity type filter, mandatory
  exportFilter <- "'{{Activity.Type}}'='"

  # exception for FormSubmitNoRaw
  if (type == "FormSubmitNoRaw"){
    exportFilter <- paste(exportFilter, "FormSubmit", "'", sep="")
  }else{
    exportFilter <- paste(exportFilter, type, "'", sep="")
  }

  # if has filter, attach

  if (length(bulkFilter)>0){
    for (i in 1:length(bulkFilter)){

      cBulkFilter <- bulkFilter[[i]]

      exportFilter <- paste(exportFilter, " AND ", "'", exportFields[names(bulkFilter[i])], "'", cBulkFilter["operator"],
                            "'", cBulkFilter["value"], "'", sep="")
    }
  }

  ## Create package to send

  postPackage <- list(

    "name" = exportName,

    "fields" = exportFields,

    "filter" = exportFilter
  )

  ## POST export definition to Eloqua endpoint

  req <- POST(url = URL,
              authenticate(
                user = paste(login@company, "\\", login@username, sep=""),
                password = login@password,
                type = "basic"
              ),
              body = postPackage,
              encode= "json"
  )

  ## return

  if (req$status == 201){
    print("Export definition created successfully!")
  }else{
    print("Error; check returned object for more info")
  }

  return(req)

}

## Sync an export definition

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

## Get sync status

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

## Sync an export and check status until done

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

## Make calls iterating through the export definition and returning data as a list of lists

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

## Get data from the export return

#' Parses through a list of lists from getExportData and returns data frame
#'
#' @param export A list of lists from getExportData
#' @return A dataframe
extractExportData <- function(export = list()){
  for (i in 1:length(export)){
    req <- export[[i]]

    content <- content(req)

    items <- content$items

    df <- data.frame(matrix(unlist(items), nrow=length(items), byrow=T),stringsAsFactors=FALSE)
    colnames(df) <- names(items[[1]])

    if (exists("exportResults")){
      exportResults <- as.data.frame(rbind(exportResults, df))
    }else{
      exportResults <- df
    }
  }

  return(exportResults)
}

