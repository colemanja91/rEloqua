
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

