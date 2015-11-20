
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
