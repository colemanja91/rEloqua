% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/eloquaActivities.R
\docType{data}
\name{eloquaActivities}
\alias{eloquaActivities}
\title{Named list of activity objects available for export via Bulk API}
\format{\preformatted{List of 10
 $ PageView       :List of 13
  ..$ ActivityId          : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType        : chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate        : chr "\{\{Activity.CreatedAt\}\}"
  ..$ ContactId           : chr "\{\{Activity.Contact.Id\}\}"
  ..$ CampaignId          : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ VisitorId           : chr "\{\{Activity.Visitor.Id\}\}"
  ..$ VisitorExternalId   : chr "\{\{Activity.Visitor.ExternalId\}\}"
  ..$ WebVisitId          : chr "\{\{Activity.Field(WebVisitId)\}\}"
  ..$ Url                 : chr "\{\{Activity.Field(Url)\}\}"
  ..$ ReferrerUrl         : chr "\{\{Activity.Field(ReferrerUrl)\}\}"
  ..$ IpAddress           : chr "\{\{Activity.Field(IpAddress)\}\}"
  ..$ IsWebTrackingOptedIn: chr "\{\{Activity.Field(IsWebTrackingOptedIn)\}\}"
  ..$ ExternalId          : chr "\{\{Activity.ExternalId\}\}"
 $ WebVisit       :List of 12
  ..$ ActivityId       : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType     : chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate     : chr "\{\{Activity.CreatedAt\}\}"
  ..$ ContactId        : chr "\{\{Activity.Contact.Id\}\}"
  ..$ VisitorId        : chr "\{\{Activity.Visitor.Id\}\}"
  ..$ VisitorExternalId: chr "\{\{Activity.Visitor.ExternalId\}\}"
  ..$ ReferrerUrl      : chr "\{\{Activity.Field(ReferrerUrl)\}\}"
  ..$ IpAddress        : chr "\{\{Activity.Field(IpAddress)\}\}"
  ..$ NumberOfPages    : chr "\{\{Activity.Field(NumberOfPages)\}\}"
  ..$ FirstPageViewUrl : chr "\{\{Activity.Field(FirstPageViewUrl)\}\}"
  ..$ Duration         : chr "\{\{Activity.Field(Duration)\}\}"
  ..$ ExternalId       : chr "\{\{Activity.ExternalId\}\}"
 $ FormSubmit     :List of 12
  ..$ ActivityId       : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType     : chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate     : chr "\{\{Activity.CreatedAt\}\}"
  ..$ ContactId        : chr "\{\{Activity.Contact.Id\}\}"
  ..$ VisitorId        : chr "\{\{Activity.Visitor.Id\}\}"
  ..$ VisitorExternalId: chr "\{\{Activity.Visitor.ExternalId\}\}"
  ..$ AssetType        : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetId          : chr "\{\{Activity.Asset.Id\}\}"
  ..$ AssetName        : chr "\{\{Activity.Asset.Name\}\}"
  ..$ RawData          : chr "\{\{Activity.Field(RawData)\}\}"
  ..$ CampaignId       : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId       : chr "\{\{Activity.ExternalId\}\}"
 $ FormSubmitNoRaw:List of 11
  ..$ ActivityId       : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType     : chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate     : chr "\{\{Activity.CreatedAt\}\}"
  ..$ ContactId        : chr "\{\{Activity.Contact.Id\}\}"
  ..$ VisitorId        : chr "\{\{Activity.Visitor.Id\}\}"
  ..$ VisitorExternalId: chr "\{\{Activity.Visitor.ExternalId\}\}"
  ..$ AssetType        : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetId          : chr "\{\{Activity.Asset.Id\}\}"
  ..$ AssetName        : chr "\{\{Activity.Asset.Name\}\}"
  ..$ CampaignId       : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId       : chr "\{\{Activity.ExternalId\}\}"
 $ EmailSend      :List of 14
  ..$ ActivityId      : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType    : chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate    : chr "\{\{Activity.CreatedAt\}\}"
  ..$ EmailAddress    : chr "\{\{Activity.Field(EmailAddress)\}\}"
  ..$ ContactId       : chr "\{\{Activity.Contact.Id\}\}"
  ..$ EmailRecipientId: chr "\{\{Activity.Field(EmailRecipientId)\}\}"
  ..$ AssetType       : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetId         : chr "\{\{Activity.Asset.Id\}\}"
  ..$ AssetName       : chr "\{\{Activity.Asset.Name\}\}"
  ..$ SubjectLine     : chr "\{\{Activity.Field(SubjectLine)\}\}"
  ..$ EmailWebLink    : chr "\{\{Activity.Field(EmailWebLink)\}\}"
  ..$ CampaignId      : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId      : chr "\{\{Activity.ExternalId\}\}"
  ..$ EmailSendType   : chr "\{\{Activity.Field(EmailSendType)\}\}"
 $ EmailOpen      :List of 17
  ..$ ActivityId       : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType     : chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate     : chr "\{\{Activity.CreatedAt\}\}"
  ..$ EmailAddress     : chr "\{\{Activity.Field(EmailAddress)\}\}"
  ..$ ContactId        : chr "\{\{Activity.Contact.Id\}\}"
  ..$ IpAddress        : chr "\{\{Activity.Field(IpAddress)\}\}"
  ..$ VisitorId        : chr "\{\{Activity.Visitor.Id\}\}"
  ..$ EmailRecipientId : chr "\{\{Activity.Field(EmailRecipientId)\}\}"
  ..$ AssetType        : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetName        : chr "\{\{Activity.Asset.Name\}\}"
  ..$ AssetId          : chr "\{\{Activity.Asset.Id\}\}"
  ..$ SubjectLine      : chr "\{\{Activity.Field(SubjectLine)\}\}"
  ..$ EmailWebLink     : chr "\{\{Activity.Field(EmailWebLink)\}\}"
  ..$ VisitorExternalId: chr "\{\{Activity.Visitor.ExternalId\}\}"
  ..$ CampaignId       : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId       : chr "\{\{Activity.ExternalId\}\}"
  ..$ EmailSendType    : chr "\{\{Activity.Field(EmailSendType)\}\}"
 $ EmailClick     :List of 18
  ..$ ActivityId          : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType        : chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate        : chr "\{\{Activity.CreatedAt\}\}"
  ..$ EmailAddress        : chr "\{\{Activity.Field(EmailAddress)\}\}"
  ..$ ContactId           : chr "\{\{Activity.Contact.Id\}\}"
  ..$ IpAddress           : chr "\{\{Activity.Field(IpAddress)\}\}"
  ..$ VisitorId           : chr "\{\{Activity.Visitor.Id\}\}"
  ..$ EmailRecipientId    : chr "\{\{Activity.Field(EmailRecipientId)\}\}"
  ..$ AssetType           : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetName           : chr "\{\{Activity.Asset.Name\}\}"
  ..$ AssetId             : chr "\{\{Activity.Asset.Id\}\}"
  ..$ SubjectLine         : chr "\{\{Activity.Field(SubjectLine)\}\}"
  ..$ EmailWebLink        : chr "\{\{Activity.Field(EmailWebLink)\}\}"
  ..$ EmailClickedThruLink: chr "\{\{Activity.Field(EmailClickedThruLink)\}\}"
  ..$ VisitorExternalId   : chr "\{\{Activity.Visitor.ExternalId\}\}"
  ..$ CampaignId          : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId          : chr "\{\{Activity.ExternalId\}\}"
  ..$ EmailSendType       : chr "\{\{Activity.Field(EmailSendType)\}\}"
 $ Subscribe      :List of 10
  ..$ ActivityId      : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType    : chr "\{\{Activity.Type\}\}"
  ..$ AssetId         : chr "\{\{Activity.Asset.Id\}\}"
  ..$ ActivityDate    : chr "\{\{Activity.CreatedAt\}\}"
  ..$ EmailAddress    : chr "\{\{Activity.Field(EmailAddress)\}\}"
  ..$ EmailRecipientId: chr "\{\{Activity.Field(EmailRecipientId)\}\}"
  ..$ AssetType       : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetName       : chr "\{\{Activity.Asset.Name\}\}"
  ..$ CampaignId      : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId      : chr "\{\{Activity.ExternalId\}\}"
 $ Unsubscribe    :List of 10
  ..$ ActivityId      : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType    : chr "\{\{Activity.Type\}\}"
  ..$ AssetId         : chr "\{\{Activity.Asset.Id\}\}"
  ..$ ActivityDate    : chr "\{\{Activity.CreatedAt\}\}"
  ..$ EmailAddress    : chr "\{\{Activity.Field(EmailAddress)\}\}"
  ..$ EmailRecipientId: chr "\{\{Activity.Field(EmailRecipientId)\}\}"
  ..$ AssetType       : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetName       : chr "\{\{Activity.Asset.Name\}\}"
  ..$ CampaignId      : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId      : chr "\{\{Activity.ExternalId\}\}"
 $ Bounceback     :List of 9
  ..$ ActivityId  : chr "\{\{Activity.Id\}\}"
  ..$ ActivityType: chr "\{\{Activity.Type\}\}"
  ..$ ActivityDate: chr "\{\{Activity.CreatedAt\}\}"
  ..$ EmailAddress: chr "\{\{Activity.Field(EmailAddress)\}\}"
  ..$ AssetId     : chr "\{\{Activity.Asset.Id\}\}"
  ..$ AssetType   : chr "\{\{Activity.Asset.Type\}\}"
  ..$ AssetName   : chr "\{\{Activity.Asset.Name\}\}"
  ..$ CampaignId  : chr "\{\{Activity.Campaign.Id\}\}"
  ..$ ExternalId  : chr "\{\{Activity.ExternalId\}\}"
}}
\usage{
eloquaActivities
}
\description{
Contains the available Eloqua activity types and their respective fields
}
\keyword{datasets}

