
#' Create an export definition
#'
#' @param login An eloquaLogin object
#' @param type The type of export to create. Accepted values are contained in eloquaActivities
#' @param fields A vector of the desired field names. If null, defaults to all available fields
#' @param bulkFilter A named list containing filter parameters; example: list("ActivityDate" = c(operator = ">", value = "2015-11-20 00:00:00"))
#' @param exportName A name to give to the export. If null, defaults to "Bulk API Export + (Timestamp)"
#' @return A list; return of POST request to the export definition API endpoint
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
