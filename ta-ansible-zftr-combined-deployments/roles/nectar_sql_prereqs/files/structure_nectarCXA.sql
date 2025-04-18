
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_](
	[mvccVersion] [bigint] NOT NULL,
	[accountId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentAccountId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[legalName] [nvarchar](75) NULL,
	[legalId] [nvarchar](75) NULL,
	[legalType] [nvarchar](75) NULL,
	[sicCode] [nvarchar](75) NULL,
	[tickerSymbol] [nvarchar](75) NULL,
	[industry] [nvarchar](75) NULL,
	[type_] [nvarchar](75) NULL,
	[size_] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[addressId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[street1] [nvarchar](75) NULL,
	[street2] [nvarchar](75) NULL,
	[street3] [nvarchar](75) NULL,
	[city] [nvarchar](75) NULL,
	[zip] [nvarchar](75) NULL,
	[regionId] [bigint] NULL,
	[countryId] [bigint] NULL,
	[typeId] [bigint] NULL,
	[mailing] [bit] NULL,
	[primary_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[addressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AMImageEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AMImageEntry](
	[uuid_] [nvarchar](75) NULL,
	[amImageEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[configurationUuid] [nvarchar](75) NULL,
	[fileVersionId] [bigint] NULL,
	[mimeType] [nvarchar](75) NULL,
	[height] [int] NULL,
	[width] [int] NULL,
	[size_] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[amImageEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnalyticsMessage]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalyticsMessage](
	[mvccVersion] [bigint] NOT NULL,
	[analyticsMessageId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[body] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[analyticsMessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnouncementsDelivery]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementsDelivery](
	[mvccVersion] [bigint] NOT NULL,
	[deliveryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[type_] [nvarchar](75) NULL,
	[email] [bit] NULL,
	[sms] [bit] NULL,
	[website] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[deliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnouncementsEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementsEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[entryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[title] [nvarchar](75) NULL,
	[content] [nvarchar](max) NULL,
	[url] [nvarchar](4000) NULL,
	[type_] [nvarchar](75) NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[priority] [int] NULL,
	[alert] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[entryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnouncementsFlag]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementsFlag](
	[mvccVersion] [bigint] NOT NULL,
	[flagId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[entryId] [bigint] NULL,
	[value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[flagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppBuilderApp]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppBuilderApp](
	[uuid_] [nvarchar](75) NULL,
	[appBuilderAppId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[active_] [bit] NULL,
	[ddlRecordSetId] [bigint] NULL,
	[ddmStructureId] [bigint] NULL,
	[ddmStructureLayoutId] [bigint] NULL,
	[deDataListViewId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[scope] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[appBuilderAppId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppBuilderAppDataRecordLink]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppBuilderAppDataRecordLink](
	[appBuilderAppDataRecordLinkId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[appBuilderAppId] [bigint] NULL,
	[appBuilderAppVersionId] [bigint] NULL,
	[ddlRecordId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[appBuilderAppDataRecordLinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppBuilderAppDeployment]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppBuilderAppDeployment](
	[appBuilderAppDeploymentId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[appBuilderAppId] [bigint] NULL,
	[settings_] [nvarchar](max) NULL,
	[type_] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[appBuilderAppDeploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppBuilderAppVersion]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppBuilderAppVersion](
	[uuid_] [nvarchar](75) NULL,
	[appBuilderAppVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[appBuilderAppId] [bigint] NULL,
	[ddlRecordSetId] [bigint] NULL,
	[ddmStructureId] [bigint] NULL,
	[ddmStructureLayoutId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[appBuilderAppVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetAutoTaggerEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetAutoTaggerEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[assetAutoTaggerEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[assetEntryId] [bigint] NULL,
	[assetTagId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[assetAutoTaggerEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetCategory]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetCategory](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[categoryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentCategoryId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[name] [nvarchar](255) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[vocabularyId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetCategoryProperty]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetCategoryProperty](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[categoryPropertyId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[categoryId] [bigint] NULL,
	[key_] [nvarchar](255) NULL,
	[value] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryPropertyId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetDisplayPageEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetDisplayPageEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[assetDisplayPageEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[layoutPageTemplateEntryId] [bigint] NULL,
	[type_] [int] NULL,
	[plid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[assetDisplayPageEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetEntries_AssetCategories]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetEntries_AssetCategories](
	[companyId] [bigint] NOT NULL,
	[categoryId] [bigint] NOT NULL,
	[entryId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC,
	[entryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetEntries_AssetTags]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetEntries_AssetTags](
	[companyId] [bigint] NOT NULL,
	[entryId] [bigint] NOT NULL,
	[tagId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[entryId] ASC,
	[tagId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[entryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[classUuid] [nvarchar](75) NULL,
	[classTypeId] [bigint] NULL,
	[listable] [bit] NULL,
	[visible] [bit] NULL,
	[startDate] [datetime2](6) NULL,
	[endDate] [datetime2](6) NULL,
	[publishDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[mimeType] [nvarchar](75) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[summary] [nvarchar](max) NULL,
	[url] [nvarchar](4000) NULL,
	[layoutUuid] [nvarchar](75) NULL,
	[height] [int] NULL,
	[width] [int] NULL,
	[priority] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[entryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetEntryAssetCategoryRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetEntryAssetCategoryRel](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[assetEntryAssetCategoryRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[assetEntryId] [bigint] NULL,
	[assetCategoryId] [bigint] NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[assetEntryAssetCategoryRelId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetEntryUsage]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetEntryUsage](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[assetEntryUsageId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[assetEntryId] [bigint] NULL,
	[containerType] [bigint] NULL,
	[containerKey] [nvarchar](200) NULL,
	[plid] [bigint] NULL,
	[type_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[assetEntryUsageId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetLink]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[linkId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[entryId1] [bigint] NULL,
	[entryId2] [bigint] NULL,
	[type_] [int] NULL,
	[weight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[linkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetListEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetListEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[assetListEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[assetListEntryKey] [nvarchar](75) NULL,
	[title] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[assetEntrySubtype] [nvarchar](255) NULL,
	[assetEntryType] [nvarchar](255) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[assetListEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetListEntryAssetEntryRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetListEntryAssetEntryRel](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[assetListEntryAssetEntryRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[assetListEntryId] [bigint] NULL,
	[assetEntryId] [bigint] NULL,
	[segmentsEntryId] [bigint] NULL,
	[position] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[assetListEntryAssetEntryRelId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetListEntrySegmentsEntryRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetListEntrySegmentsEntryRel](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[alEntrySegmentsEntryRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[assetListEntryId] [bigint] NULL,
	[segmentsEntryId] [bigint] NULL,
	[typeSettings] [nvarchar](max) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[alEntrySegmentsEntryRelId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetListEntryUsage]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetListEntryUsage](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[assetListEntryUsageId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[assetListEntryId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[portletId] [nvarchar](200) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[assetListEntryUsageId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetTag]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetTag](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[tagId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[assetCount] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[tagId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetVocabulary]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetVocabulary](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[vocabularyId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[settings_] [nvarchar](4000) NULL,
	[visibilityType] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[vocabularyId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audit_AuditEvent]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_AuditEvent](
	[auditEventId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[eventType] [nvarchar](75) NULL,
	[className] [nvarchar](200) NULL,
	[classPK] [nvarchar](75) NULL,
	[message] [nvarchar](4000) NULL,
	[clientHost] [nvarchar](255) NULL,
	[clientIP] [nvarchar](255) NULL,
	[serverName] [nvarchar](255) NULL,
	[serverPort] [int] NULL,
	[sessionID] [nvarchar](255) NULL,
	[additionalInfo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[auditEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AXLinkedTestCaseRun]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AXLinkedTestCaseRun](
	[ID] [varchar](255) NOT NULL,
	[AGENT_ID] [varchar](255) NULL,
	[AX_CAMPAIGN_ID] [varchar](255) NULL,
	[AX_TESTCASE_RUN_ID] [varchar](255) NULL,
	[CLI] [varchar](255) NULL,
	[IS_DELETE] [tinyint] NULL,
	[END_TIME] [datetime] NULL,
	[ORG_ID] [numeric](19, 0) NULL,
	[REASON] [varchar](255) NULL,
	[STATUS] [varchar](255) NULL,
	[TEST_SUITE_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BackgroundTask]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackgroundTask](
	[mvccVersion] [bigint] NOT NULL,
	[backgroundTaskId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](255) NULL,
	[servletContextNames] [nvarchar](255) NULL,
	[taskExecutorClassName] [nvarchar](200) NULL,
	[taskContextMap] [nvarchar](max) NULL,
	[completed] [bit] NULL,
	[completionDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusMessage] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[backgroundTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchEngineExportTask]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchEngineExportTask](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[batchEngineExportTaskId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[callbackURL] [nvarchar](75) NULL,
	[className] [nvarchar](255) NULL,
	[content] [image] NULL,
	[contentType] [nvarchar](75) NULL,
	[endTime] [datetime2](6) NULL,
	[errorMessage] [nvarchar](1000) NULL,
	[fieldNames] [nvarchar](75) NULL,
	[executeStatus] [nvarchar](75) NULL,
	[parameters] [nvarchar](max) NULL,
	[startTime] [datetime2](6) NULL,
	[taskItemDelegateName] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[batchEngineExportTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchEngineImportTask]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchEngineImportTask](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[batchEngineImportTaskId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[batchSize] [bigint] NULL,
	[callbackURL] [nvarchar](75) NULL,
	[className] [nvarchar](255) NULL,
	[content] [image] NULL,
	[contentType] [nvarchar](75) NULL,
	[endTime] [datetime2](6) NULL,
	[errorMessage] [nvarchar](1000) NULL,
	[executeStatus] [nvarchar](75) NULL,
	[fieldNameMapping] [nvarchar](max) NULL,
	[operation] [nvarchar](75) NULL,
	[parameters] [nvarchar](max) NULL,
	[startTime] [datetime2](6) NULL,
	[taskItemDelegateName] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[batchEngineImportTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogsEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogsEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[entryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[title] [nvarchar](255) NULL,
	[subtitle] [nvarchar](4000) NULL,
	[urlTitle] [nvarchar](255) NULL,
	[description] [nvarchar](4000) NULL,
	[content] [nvarchar](max) NULL,
	[displayDate] [datetime2](6) NULL,
	[allowPingbacks] [bit] NULL,
	[allowTrackbacks] [bit] NULL,
	[trackbacks] [nvarchar](max) NULL,
	[coverImageCaption] [nvarchar](4000) NULL,
	[coverImageFileEntryId] [bigint] NULL,
	[coverImageURL] [nvarchar](4000) NULL,
	[smallImage] [bit] NULL,
	[smallImageFileEntryId] [bigint] NULL,
	[smallImageId] [bigint] NULL,
	[smallImageURL] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[entryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogsStatsUser]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogsStatsUser](
	[mvccVersion] [bigint] NOT NULL,
	[statsUserId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[entryCount] [int] NULL,
	[lastPostDate] [datetime2](6) NULL,
	[ratingsTotalEntries] [int] NULL,
	[ratingsTotalScore] [float] NULL,
	[ratingsAverageScore] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[statsUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrowserTracker]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrowserTracker](
	[mvccVersion] [bigint] NOT NULL,
	[browserTrackerId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[browserKey] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[browserTrackerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAccountGroupCAccountRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAccountGroupCAccountRel](
	[externalReferenceCode] [nvarchar](75) NULL,
	[CAccountGroupCAccountRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceAccountGroupId] [bigint] NULL,
	[commerceAccountId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CAccountGroupCAccountRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[calendarId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[calendarResourceId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[timeZoneId] [nvarchar](75) NULL,
	[color] [int] NULL,
	[defaultCalendar] [bit] NULL,
	[enableComments] [bit] NULL,
	[enableRatings] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[calendarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalendarBooking]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarBooking](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[calendarBookingId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[calendarId] [bigint] NULL,
	[calendarResourceId] [bigint] NULL,
	[parentCalendarBookingId] [bigint] NULL,
	[recurringCalendarBookingId] [bigint] NULL,
	[vEventUid] [nvarchar](255) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[location] [nvarchar](4000) NULL,
	[startTime] [bigint] NULL,
	[endTime] [bigint] NULL,
	[allDay] [bit] NULL,
	[recurrence] [nvarchar](4000) NULL,
	[firstReminder] [bigint] NULL,
	[firstReminderType] [nvarchar](75) NULL,
	[secondReminder] [bigint] NULL,
	[secondReminderType] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[calendarBookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalendarNotificationTemplate]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarNotificationTemplate](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[calendarNotificationTemplateId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[calendarId] [bigint] NULL,
	[notificationType] [nvarchar](75) NULL,
	[notificationTypeSettings] [nvarchar](200) NULL,
	[notificationTemplateType] [nvarchar](75) NULL,
	[subject] [nvarchar](75) NULL,
	[body] [nvarchar](max) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[calendarNotificationTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalendarResource]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarResource](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[calendarResourceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[classUuid] [nvarchar](75) NULL,
	[code_] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[active_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[calendarResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDiscountCAccountGroupRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDiscountCAccountGroupRel](
	[CDiscountCAccountGroupRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceDiscountId] [bigint] NULL,
	[commerceAccountGroupId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CDiscountCAccountGroupRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangesetCollection]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangesetCollection](
	[changesetCollectionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[changesetCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangesetEntry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangesetEntry](
	[changesetEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[changesetCollectionId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[changesetEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIAudit]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIAudit](
	[CIAuditId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[sku] [nvarchar](75) NULL,
	[logType] [nvarchar](75) NULL,
	[logTypeSettings] [nvarchar](max) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CIAuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIBookedQuantity]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIBookedQuantity](
	[mvccVersion] [bigint] NOT NULL,
	[CIBookedQuantityId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[sku] [nvarchar](75) NULL,
	[quantity] [int] NULL,
	[expirationDate] [datetime2](6) NULL,
	[bookedNote] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[CIBookedQuantityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIReplenishmentItem]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIReplenishmentItem](
	[mvccVersion] [bigint] NOT NULL,
	[CIReplenishmentItemId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceInventoryWarehouseId] [bigint] NULL,
	[sku] [nvarchar](75) NULL,
	[availabilityDate] [datetime2](6) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CIReplenishmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIWarehouse]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIWarehouse](
	[mvccVersion] [bigint] NOT NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[CIWarehouseId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](75) NULL,
	[active_] [bit] NULL,
	[street1] [nvarchar](75) NULL,
	[street2] [nvarchar](75) NULL,
	[street3] [nvarchar](75) NULL,
	[city] [nvarchar](75) NULL,
	[zip] [nvarchar](75) NULL,
	[commerceRegionCode] [nvarchar](75) NULL,
	[countryTwoLettersISOCode] [nvarchar](75) NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[type_] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[CIWarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIWarehouseGroupRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIWarehouseGroupRel](
	[CIWarehouseGroupRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceWarehouseId] [bigint] NULL,
	[primary_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CIWarehouseGroupRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIWarehouseItem]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIWarehouseItem](
	[mvccVersion] [bigint] NOT NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[CIWarehouseItemId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceInventoryWarehouseId] [bigint] NULL,
	[sku] [nvarchar](75) NULL,
	[quantity] [int] NULL,
	[reservedQuantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CIWarehouseItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassName_]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassName_](
	[mvccVersion] [bigint] NOT NULL,
	[classNameId] [bigint] NOT NULL,
	[value] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[classNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CNotificationAttachment]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CNotificationAttachment](
	[uuid_] [nvarchar](75) NULL,
	[CNotificationAttachmentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CNotificationQueueEntryId] [bigint] NULL,
	[fileEntryId] [bigint] NULL,
	[deleteOnSend] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CNotificationAttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CNTemplateCAccountGroupRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CNTemplateCAccountGroupRel](
	[CNTemplateCAccountGroupRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceNotificationTemplateId] [bigint] NULL,
	[commerceAccountGroupId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CNTemplateCAccountGroupRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAccount]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAccount](
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceAccountId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentCommerceAccountId] [bigint] NULL,
	[name] [nvarchar](255) NULL,
	[logoId] [bigint] NULL,
	[email] [nvarchar](75) NULL,
	[taxId] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[active_] [bit] NULL,
	[displayDate] [datetime2](6) NULL,
	[defaultBillingAddressId] [bigint] NULL,
	[defaultShippingAddressId] [bigint] NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAccountGroup]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAccountGroup](
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceAccountGroupId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[system_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAccountGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAccountGroupRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAccountGroupRel](
	[commerceAccountGroupRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[commerceAccountGroupId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAccountGroupRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAccountOrganizationRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAccountOrganizationRel](
	[commerceAccountId] [bigint] NOT NULL,
	[organizationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAccountId] ASC,
	[organizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAccountUserRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAccountUserRel](
	[commerceAccountId] [bigint] NOT NULL,
	[commerceAccountUserId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAccountId] ASC,
	[commerceAccountUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAddress]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAddress](
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceAddressId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](4000) NULL,
	[street1] [nvarchar](255) NULL,
	[street2] [nvarchar](255) NULL,
	[street3] [nvarchar](255) NULL,
	[city] [nvarchar](75) NULL,
	[zip] [nvarchar](75) NULL,
	[commerceRegionId] [bigint] NULL,
	[commerceCountryId] [bigint] NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[phoneNumber] [nvarchar](75) NULL,
	[defaultBilling] [bit] NULL,
	[defaultShipping] [bit] NULL,
	[type_] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAddressRestriction]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAddressRestriction](
	[commerceAddressRestrictionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[commerceCountryId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAddressRestrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceAvailabilityEstimate]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceAvailabilityEstimate](
	[uuid_] [nvarchar](75) NULL,
	[commerceAvailabilityEstimateId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[title] [nvarchar](4000) NULL,
	[priority] [float] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceAvailabilityEstimateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceCatalog]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceCatalog](
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceCatalogId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[commerceCurrencyCode] [nvarchar](75) NULL,
	[catalogDefaultLanguageId] [nvarchar](75) NULL,
	[system_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceCatalogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceChannel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceChannel](
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceChannelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[siteGroupId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[type_] [nvarchar](75) NULL,
	[typeSettings] [nvarchar](75) NULL,
	[commerceCurrencyCode] [nvarchar](75) NULL,
	[priceDisplayType] [nvarchar](75) NULL,
	[discountsTargetNetPrice] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceChannelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceChannelRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceChannelRel](
	[commerceChannelRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[commerceChannelId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceChannelRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceCountry]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceCountry](
	[uuid_] [nvarchar](75) NULL,
	[commerceCountryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[billingAllowed] [bit] NULL,
	[shippingAllowed] [bit] NULL,
	[twoLettersISOCode] [nvarchar](75) NULL,
	[threeLettersISOCode] [nvarchar](75) NULL,
	[numericISOCode] [int] NULL,
	[subjectToVAT] [bit] NULL,
	[priority] [float] NULL,
	[active_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[channelFilterEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceCountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceCurrency]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceCurrency](
	[uuid_] [nvarchar](75) NULL,
	[commerceCurrencyId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[code_] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[symbol] [nvarchar](75) NULL,
	[rate] [decimal](30, 16) NULL,
	[formatPattern] [nvarchar](4000) NULL,
	[maxFractionDigits] [int] NULL,
	[minFractionDigits] [int] NULL,
	[roundingMode] [nvarchar](75) NULL,
	[primary_] [bit] NULL,
	[priority] [float] NULL,
	[active_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceCurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceDiscount]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceDiscount](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceDiscountId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[title] [nvarchar](75) NULL,
	[target] [nvarchar](75) NULL,
	[useCouponCode] [bit] NULL,
	[couponCode] [nvarchar](75) NULL,
	[usePercentage] [bit] NULL,
	[maximumDiscountAmount] [decimal](30, 16) NULL,
	[levelType] [nvarchar](75) NULL,
	[level1] [decimal](30, 16) NULL,
	[level2] [decimal](30, 16) NULL,
	[level3] [decimal](30, 16) NULL,
	[level4] [decimal](30, 16) NULL,
	[limitationType] [nvarchar](75) NULL,
	[limitationTimes] [int] NULL,
	[limitationTimesPerAccount] [int] NULL,
	[numberOfUse] [int] NULL,
	[rulesConjunction] [bit] NULL,
	[active_] [bit] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceDiscountAccountRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceDiscountAccountRel](
	[uuid_] [nvarchar](75) NULL,
	[commerceDiscountAccountRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceAccountId] [bigint] NULL,
	[commerceDiscountId] [bigint] NULL,
	[order_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceDiscountAccountRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceDiscountRel]    Script Date: 15-12-2021 13:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceDiscountRel](
	[commerceDiscountRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceDiscountId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceDiscountRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceDiscountRule]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceDiscountRule](
	[commerceDiscountRuleId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[commerceDiscountId] [bigint] NULL,
	[type_] [nvarchar](75) NULL,
	[typeSettings] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceDiscountRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceDiscountUsageEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceDiscountUsageEntry](
	[commerceDiscountUsageEntryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceAccountId] [bigint] NULL,
	[commerceOrderId] [bigint] NULL,
	[commerceDiscountId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceDiscountUsageEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceNotificationQueueEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceNotificationQueueEntry](
	[CNotificationQueueEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[commerceNotificationTemplateId] [bigint] NULL,
	[from_] [nvarchar](75) NULL,
	[fromName] [nvarchar](75) NULL,
	[to_] [nvarchar](75) NULL,
	[toName] [nvarchar](75) NULL,
	[cc] [nvarchar](255) NULL,
	[bcc] [nvarchar](255) NULL,
	[subject] [nvarchar](255) NULL,
	[body] [nvarchar](max) NULL,
	[priority] [float] NULL,
	[sent] [bit] NULL,
	[sentDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CNotificationQueueEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceNotificationTemplate]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceNotificationTemplate](
	[uuid_] [nvarchar](75) NULL,
	[commerceNotificationTemplateId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[from_] [nvarchar](75) NULL,
	[fromName] [nvarchar](4000) NULL,
	[to_] [nvarchar](75) NULL,
	[cc] [nvarchar](255) NULL,
	[bcc] [nvarchar](255) NULL,
	[type_] [nvarchar](75) NULL,
	[enabled] [bit] NULL,
	[subject] [nvarchar](4000) NULL,
	[body] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceNotificationTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceOrder]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceOrder](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceOrderId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceAccountId] [bigint] NULL,
	[commerceCurrencyId] [bigint] NULL,
	[billingAddressId] [bigint] NULL,
	[shippingAddressId] [bigint] NULL,
	[commercePaymentMethodKey] [nvarchar](75) NULL,
	[transactionId] [nvarchar](max) NULL,
	[commerceShippingMethodId] [bigint] NULL,
	[shippingOptionName] [nvarchar](255) NULL,
	[purchaseOrderNumber] [nvarchar](75) NULL,
	[couponCode] [nvarchar](75) NULL,
	[lastPriceUpdateDate] [datetime2](6) NULL,
	[subtotal] [decimal](30, 16) NULL,
	[subtotalDiscountAmount] [decimal](30, 16) NULL,
	[subtotalDiscountPercentLevel1] [decimal](30, 16) NULL,
	[subtotalDiscountPercentLevel2] [decimal](30, 16) NULL,
	[subtotalDiscountPercentLevel3] [decimal](30, 16) NULL,
	[subtotalDiscountPercentLevel4] [decimal](30, 16) NULL,
	[shippingAmount] [decimal](30, 16) NULL,
	[shippingDiscountAmount] [decimal](30, 16) NULL,
	[shippingDiscountPercentLevel1] [decimal](30, 16) NULL,
	[shippingDiscountPercentLevel2] [decimal](30, 16) NULL,
	[shippingDiscountPercentLevel3] [decimal](30, 16) NULL,
	[shippingDiscountPercentLevel4] [decimal](30, 16) NULL,
	[taxAmount] [decimal](30, 16) NULL,
	[total] [decimal](30, 16) NULL,
	[totalDiscountAmount] [decimal](30, 16) NULL,
	[totalDiscountPercentageLevel1] [decimal](30, 16) NULL,
	[totalDiscountPercentageLevel2] [decimal](30, 16) NULL,
	[totalDiscountPercentageLevel3] [decimal](30, 16) NULL,
	[totalDiscountPercentageLevel4] [decimal](30, 16) NULL,
	[subtotalWithTaxAmount] [decimal](30, 16) NULL,
	[subtotalDiscountWithTaxAmount] [decimal](30, 16) NULL,
	[subtotalDiscountPctLev1WithTax] [decimal](30, 16) NULL,
	[subtotalDiscountPctLev2WithTax] [decimal](30, 16) NULL,
	[subtotalDiscountPctLev3WithTax] [decimal](30, 16) NULL,
	[subtotalDiscountPctLev4WithTax] [decimal](30, 16) NULL,
	[shippingWithTaxAmount] [decimal](30, 16) NULL,
	[shippingDiscountWithTaxAmount] [decimal](30, 16) NULL,
	[shippingDiscountPctLev1WithTax] [decimal](30, 16) NULL,
	[shippingDiscountPctLev2WithTax] [decimal](30, 16) NULL,
	[shippingDiscountPctLev3WithTax] [decimal](30, 16) NULL,
	[shippingDiscountPctLev4WithTax] [decimal](30, 16) NULL,
	[totalWithTaxAmount] [decimal](30, 16) NULL,
	[totalDiscountWithTaxAmount] [decimal](30, 16) NULL,
	[totalDiscountPctLev1WithTax] [decimal](30, 16) NULL,
	[totalDiscountPctLev2WithTax] [decimal](30, 16) NULL,
	[totalDiscountPctLev3WithTax] [decimal](30, 16) NULL,
	[totalDiscountPctLev4WithTax] [decimal](30, 16) NULL,
	[advanceStatus] [nvarchar](75) NULL,
	[paymentStatus] [int] NULL,
	[orderDate] [datetime2](6) NULL,
	[orderStatus] [int] NULL,
	[printedNote] [nvarchar](4000) NULL,
	[requestedDeliveryDate] [datetime2](6) NULL,
	[manuallyAdjusted] [bit] NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceOrderItem]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceOrderItem](
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceOrderItemId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceOrderId] [bigint] NULL,
	[commercePriceListId] [bigint] NULL,
	[CProductId] [bigint] NULL,
	[CPInstanceId] [bigint] NULL,
	[parentCommerceOrderItemId] [bigint] NULL,
	[quantity] [int] NULL,
	[shippedQuantity] [int] NULL,
	[json] [nvarchar](max) NULL,
	[name] [nvarchar](4000) NULL,
	[sku] [nvarchar](75) NULL,
	[unitPrice] [decimal](30, 16) NULL,
	[promoPrice] [decimal](30, 16) NULL,
	[discountAmount] [decimal](30, 16) NULL,
	[finalPrice] [decimal](30, 16) NULL,
	[discountPercentageLevel1] [decimal](30, 16) NULL,
	[discountPercentageLevel2] [decimal](30, 16) NULL,
	[discountPercentageLevel3] [decimal](30, 16) NULL,
	[discountPercentageLevel4] [decimal](30, 16) NULL,
	[unitPriceWithTaxAmount] [decimal](30, 16) NULL,
	[promoPriceWithTaxAmount] [decimal](30, 16) NULL,
	[discountWithTaxAmount] [decimal](30, 16) NULL,
	[finalPriceWithTaxAmount] [decimal](30, 16) NULL,
	[discountPctLevel1WithTaxAmount] [decimal](30, 16) NULL,
	[discountPctLevel2WithTaxAmount] [decimal](30, 16) NULL,
	[discountPctLevel3WithTaxAmount] [decimal](30, 16) NULL,
	[discountPctLevel4WithTaxAmount] [decimal](30, 16) NULL,
	[subscription] [bit] NULL,
	[deliveryGroup] [nvarchar](75) NULL,
	[shippingAddressId] [bigint] NULL,
	[printedNote] [nvarchar](4000) NULL,
	[requestedDeliveryDate] [datetime2](6) NULL,
	[bookedQuantityId] [bigint] NULL,
	[manuallyAdjusted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceOrderNote]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceOrderNote](
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceOrderNoteId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceOrderId] [bigint] NULL,
	[content] [nvarchar](4000) NULL,
	[restricted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceOrderNoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceOrderPayment]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceOrderPayment](
	[commerceOrderPaymentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceOrderId] [bigint] NULL,
	[commercePaymentMethodKey] [nvarchar](75) NULL,
	[content] [nvarchar](max) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceOrderPaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePaymentMethodGroupRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePaymentMethodGroupRel](
	[CPaymentMethodGroupRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[imageId] [bigint] NULL,
	[engineKey] [nvarchar](75) NULL,
	[priority] [float] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CPaymentMethodGroupRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePriceEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePriceEntry](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[commercePriceEntryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commercePriceListId] [bigint] NULL,
	[CPInstanceUuid] [nvarchar](75) NULL,
	[CProductId] [bigint] NULL,
	[price] [decimal](30, 16) NULL,
	[promoPrice] [decimal](30, 16) NULL,
	[discountDiscovery] [bit] NULL,
	[discountLevel1] [decimal](30, 16) NULL,
	[discountLevel2] [decimal](30, 16) NULL,
	[discountLevel3] [decimal](30, 16) NULL,
	[discountLevel4] [decimal](30, 16) NULL,
	[hasTierPrice] [bit] NULL,
	[bulkPricing] [bit] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commercePriceEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePriceList]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePriceList](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[commercePriceListId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceCurrencyId] [bigint] NULL,
	[parentCommercePriceListId] [bigint] NULL,
	[catalogBasePriceList] [bit] NULL,
	[netPrice] [bit] NULL,
	[type_] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[priority] [float] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commercePriceListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePriceListAccountRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePriceListAccountRel](
	[uuid_] [nvarchar](75) NULL,
	[commercePriceListAccountRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceAccountId] [bigint] NULL,
	[commercePriceListId] [bigint] NULL,
	[order_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commercePriceListAccountRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePriceListChannelRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePriceListChannelRel](
	[uuid_] [nvarchar](75) NULL,
	[CommercePriceListChannelRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceChannelId] [bigint] NULL,
	[commercePriceListId] [bigint] NULL,
	[order_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommercePriceListChannelRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePriceListDiscountRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePriceListDiscountRel](
	[uuid_] [nvarchar](75) NULL,
	[commercePriceListDiscountRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceDiscountId] [bigint] NULL,
	[commercePriceListId] [bigint] NULL,
	[order_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commercePriceListDiscountRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePriceModifier]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePriceModifier](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[commercePriceModifierId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commercePriceListId] [bigint] NULL,
	[title] [nvarchar](75) NULL,
	[target] [nvarchar](75) NULL,
	[modifierAmount] [decimal](30, 16) NULL,
	[modifierType] [nvarchar](75) NULL,
	[priority] [float] NULL,
	[active_] [bit] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commercePriceModifierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePriceModifierRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePriceModifierRel](
	[commercePriceModifierRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commercePriceModifierId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[commercePriceModifierRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommercePricingClass]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommercePricingClass](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[commercePricingClassId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commercePricingClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceRegion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceRegion](
	[uuid_] [nvarchar](75) NULL,
	[commerceRegionId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceCountryId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[code_] [nvarchar](75) NULL,
	[priority] [float] NULL,
	[active_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceRegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceShipment]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceShipment](
	[commerceShipmentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceAccountId] [bigint] NULL,
	[commerceAddressId] [bigint] NULL,
	[commerceShippingMethodId] [bigint] NULL,
	[shippingOptionName] [nvarchar](max) NULL,
	[carrier] [nvarchar](75) NULL,
	[trackingNumber] [nvarchar](75) NULL,
	[shippingDate] [datetime2](6) NULL,
	[expectedDate] [datetime2](6) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceShipmentItem]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceShipmentItem](
	[commerceShipmentItemId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceShipmentId] [bigint] NULL,
	[commerceOrderItemId] [bigint] NULL,
	[commerceInventoryWarehouseId] [bigint] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceShipmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceShippingFixedOption]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceShippingFixedOption](
	[commerceShippingFixedOptionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceShippingMethodId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[amount] [decimal](30, 16) NULL,
	[priority] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceShippingFixedOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceShippingMethod]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceShippingMethod](
	[commerceShippingMethodId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[imageId] [bigint] NULL,
	[engineKey] [nvarchar](75) NULL,
	[priority] [float] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceShippingMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceSubscriptionEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceSubscriptionEntry](
	[uuid_] [nvarchar](75) NULL,
	[commerceSubscriptionEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPInstanceUuid] [nvarchar](75) NULL,
	[CProductId] [bigint] NULL,
	[commerceOrderItemId] [bigint] NULL,
	[subscriptionLength] [int] NULL,
	[subscriptionType] [nvarchar](75) NULL,
	[subscriptionTypeSettings] [nvarchar](max) NULL,
	[currentCycle] [bigint] NULL,
	[maxSubscriptionCycles] [bigint] NULL,
	[subscriptionStatus] [int] NULL,
	[lastIterationDate] [datetime2](6) NULL,
	[nextIterationDate] [datetime2](6) NULL,
	[startDate] [datetime2](6) NULL,
	[deliverySubscriptionLength] [int] NULL,
	[deliverySubscriptionType] [nvarchar](75) NULL,
	[deliverySubTypeSettings] [nvarchar](75) NULL,
	[deliveryCurrentCycle] [bigint] NULL,
	[deliveryMaxSubscriptionCycles] [bigint] NULL,
	[deliverySubscriptionStatus] [int] NULL,
	[deliveryLastIterationDate] [datetime2](6) NULL,
	[deliveryNextIterationDate] [datetime2](6) NULL,
	[deliveryStartDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceSubscriptionEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceTaxFixedRate]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceTaxFixedRate](
	[commerceTaxFixedRateId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPTaxCategoryId] [bigint] NULL,
	[commerceTaxMethodId] [bigint] NULL,
	[rate] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceTaxFixedRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceTaxFixedRateAddressRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceTaxFixedRateAddressRel](
	[CTaxFixedRateAddressRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceTaxMethodId] [bigint] NULL,
	[CPTaxCategoryId] [bigint] NULL,
	[commerceCountryId] [bigint] NULL,
	[commerceRegionId] [bigint] NULL,
	[zip] [nvarchar](75) NULL,
	[rate] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CTaxFixedRateAddressRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceTaxMethod]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceTaxMethod](
	[commerceTaxMethodId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[engineKey] [nvarchar](75) NULL,
	[percentage] [bit] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceTaxMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceTierPriceEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceTierPriceEntry](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[commerceTierPriceEntryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commercePriceEntryId] [bigint] NULL,
	[price] [decimal](30, 16) NULL,
	[promoPrice] [decimal](30, 16) NULL,
	[discountDiscovery] [bit] NULL,
	[discountLevel1] [decimal](30, 16) NULL,
	[discountLevel2] [decimal](30, 16) NULL,
	[discountLevel3] [decimal](30, 16) NULL,
	[discountLevel4] [decimal](30, 16) NULL,
	[minQuantity] [int] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceTierPriceEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceVirtualOrderItem]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceVirtualOrderItem](
	[uuid_] [nvarchar](75) NULL,
	[commerceVirtualOrderItemId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceOrderItemId] [bigint] NULL,
	[fileEntryId] [bigint] NULL,
	[url] [nvarchar](75) NULL,
	[activationStatus] [int] NULL,
	[duration] [bigint] NULL,
	[usages] [int] NULL,
	[maxUsages] [int] NULL,
	[active_] [bit] NULL,
	[startDate] [datetime2](6) NULL,
	[endDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceVirtualOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceWishList]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceWishList](
	[uuid_] [nvarchar](75) NULL,
	[commerceWishListId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[defaultWishList] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceWishListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommerceWishListItem]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommerceWishListItem](
	[commerceWishListItemId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceWishListId] [bigint] NULL,
	[CPInstanceUuid] [nvarchar](75) NULL,
	[CProductId] [bigint] NULL,
	[json] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[commerceWishListItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[mvccVersion] [bigint] NOT NULL,
	[companyId] [bigint] NOT NULL,
	[accountId] [bigint] NULL,
	[webId] [nvarchar](75) NULL,
	[mx] [nvarchar](200) NULL,
	[homeURL] [nvarchar](4000) NULL,
	[logoId] [bigint] NULL,
	[system_] [bit] NULL,
	[maxUsers] [int] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyInfo]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyInfo](
	[mvccVersion] [bigint] NOT NULL,
	[companyInfoId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[key_] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[companyInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration_]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration_](
	[configurationId] [nvarchar](255) NOT NULL,
	[dictionary] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[configurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact_]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact_](
	[mvccVersion] [bigint] NOT NULL,
	[contactId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[accountId] [bigint] NULL,
	[parentContactId] [bigint] NULL,
	[emailAddress] [nvarchar](254) NULL,
	[firstName] [nvarchar](75) NULL,
	[middleName] [nvarchar](75) NULL,
	[lastName] [nvarchar](75) NULL,
	[prefixId] [bigint] NULL,
	[suffixId] [bigint] NULL,
	[male] [bit] NULL,
	[birthday] [datetime2](6) NULL,
	[smsSn] [nvarchar](75) NULL,
	[facebookSn] [nvarchar](75) NULL,
	[jabberSn] [nvarchar](75) NULL,
	[skypeSn] [nvarchar](75) NULL,
	[twitterSn] [nvarchar](75) NULL,
	[employeeStatusId] [nvarchar](75) NULL,
	[employeeNumber] [nvarchar](75) NULL,
	[jobTitle] [nvarchar](100) NULL,
	[jobClass] [nvarchar](75) NULL,
	[hoursOfOperation] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[contactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts_Entry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_Entry](
	[entryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[fullName] [nvarchar](75) NULL,
	[emailAddress] [nvarchar](254) NULL,
	[comments] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[entryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Counter]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counter](
	[name] [nvarchar](150) NOT NULL,
	[currentId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[mvccVersion] [bigint] NOT NULL,
	[countryId] [bigint] NOT NULL,
	[name] [nvarchar](75) NULL,
	[a2] [nvarchar](75) NULL,
	[a3] [nvarchar](75) NULL,
	[number_] [nvarchar](75) NULL,
	[idd_] [nvarchar](75) NULL,
	[zipRequired] [bit] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[countryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPAttachmentFileEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPAttachmentFileEntry](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[CPAttachmentFileEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[fileEntryId] [bigint] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[title] [nvarchar](4000) NULL,
	[json] [nvarchar](max) NULL,
	[priority] [float] NULL,
	[type_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPAttachmentFileEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDAvailabilityEstimate]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDAvailabilityEstimate](
	[uuid_] [nvarchar](75) NULL,
	[CPDAvailabilityEstimateId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceAvailabilityEstimateId] [bigint] NULL,
	[CProductId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDAvailabilityEstimateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinition]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinition](
	[uuid_] [nvarchar](75) NULL,
	[defaultLanguageId] [nvarchar](75) NULL,
	[CPDefinitionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CProductId] [bigint] NULL,
	[CPTaxCategoryId] [bigint] NULL,
	[productTypeName] [nvarchar](75) NULL,
	[availableIndividually] [bit] NULL,
	[ignoreSKUCombinations] [bit] NULL,
	[shippable] [bit] NULL,
	[freeShipping] [bit] NULL,
	[shipSeparately] [bit] NULL,
	[shippingExtraPrice] [float] NULL,
	[width] [float] NULL,
	[height] [float] NULL,
	[depth] [float] NULL,
	[weight] [float] NULL,
	[taxExempt] [bit] NULL,
	[telcoOrElectronics] [bit] NULL,
	[DDMStructureKey] [nvarchar](75) NULL,
	[published] [bit] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[subscriptionEnabled] [bit] NULL,
	[subscriptionLength] [int] NULL,
	[subscriptionType] [nvarchar](75) NULL,
	[subscriptionTypeSettings] [nvarchar](max) NULL,
	[maxSubscriptionCycles] [bigint] NULL,
	[deliverySubscriptionEnabled] [bit] NULL,
	[deliverySubscriptionLength] [int] NULL,
	[deliverySubscriptionType] [nvarchar](75) NULL,
	[deliverySubTypeSettings] [nvarchar](75) NULL,
	[deliveryMaxSubscriptionCycles] [bigint] NULL,
	[accountGroupFilterEnabled] [bit] NULL,
	[channelFilterEnabled] [bit] NULL,
	[version] [int] NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinitionGroupedEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinitionGroupedEntry](
	[uuid_] [nvarchar](75) NULL,
	[CPDefinitionGroupedEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionId] [bigint] NULL,
	[entryCProductId] [bigint] NULL,
	[priority] [float] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDefinitionGroupedEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinitionInventory]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinitionInventory](
	[uuid_] [nvarchar](75) NULL,
	[CPDefinitionInventoryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionId] [bigint] NULL,
	[CPDefinitionInventoryEngine] [nvarchar](75) NULL,
	[lowStockActivity] [nvarchar](75) NULL,
	[displayAvailability] [bit] NULL,
	[displayStockQuantity] [bit] NULL,
	[minStockQuantity] [int] NULL,
	[backOrders] [bit] NULL,
	[minOrderQuantity] [int] NULL,
	[maxOrderQuantity] [int] NULL,
	[allowedOrderQuantities] [nvarchar](75) NULL,
	[multipleOrderQuantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDefinitionInventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinitionLink]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinitionLink](
	[uuid_] [nvarchar](75) NULL,
	[CPDefinitionLinkId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionId] [bigint] NULL,
	[CProductId] [bigint] NULL,
	[priority] [float] NULL,
	[type_] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDefinitionLinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinitionLocalization]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinitionLocalization](
	[mvccVersion] [bigint] NOT NULL,
	[cpDefinitionLocalizationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[CPDefinitionId] [bigint] NULL,
	[languageId] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[shortDescription] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[metaTitle] [nvarchar](255) NULL,
	[metaDescription] [nvarchar](255) NULL,
	[metaKeywords] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cpDefinitionLocalizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinitionOptionRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinitionOptionRel](
	[uuid_] [nvarchar](75) NULL,
	[CPDefinitionOptionRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionId] [bigint] NULL,
	[CPOptionId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[DDMFormFieldTypeName] [nvarchar](75) NULL,
	[priority] [float] NULL,
	[facetable] [bit] NULL,
	[required] [bit] NULL,
	[skuContributor] [bit] NULL,
	[key_] [nvarchar](75) NULL,
	[priceType] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDefinitionOptionRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinitionOptionValueRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinitionOptionValueRel](
	[uuid_] [nvarchar](75) NULL,
	[CPDefinitionOptionValueRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionOptionRelId] [bigint] NULL,
	[CPInstanceUuid] [nvarchar](75) NULL,
	[CProductId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[priority] [float] NULL,
	[key_] [nvarchar](75) NULL,
	[quantity] [int] NULL,
	[preselected] [bit] NULL,
	[price] [decimal](30, 16) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDefinitionOptionValueRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDefinitionVirtualSetting]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDefinitionVirtualSetting](
	[uuid_] [nvarchar](75) NULL,
	[CPDefinitionVirtualSettingId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[fileEntryId] [bigint] NULL,
	[url] [nvarchar](255) NULL,
	[activationStatus] [int] NULL,
	[duration] [bigint] NULL,
	[maxUsages] [int] NULL,
	[useSample] [bit] NULL,
	[sampleFileEntryId] [bigint] NULL,
	[sampleUrl] [nvarchar](255) NULL,
	[termsOfUseRequired] [bit] NULL,
	[termsOfUseContent] [nvarchar](4000) NULL,
	[termsOfUseArticleResourcePK] [bigint] NULL,
	[override] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDefinitionVirtualSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDisplayLayout]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDisplayLayout](
	[uuid_] [nvarchar](75) NULL,
	[CPDisplayLayoutId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[layoutUuid] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDisplayLayoutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPDSpecificationOptionValue]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPDSpecificationOptionValue](
	[uuid_] [nvarchar](75) NULL,
	[CPDSpecificationOptionValueId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionId] [bigint] NULL,
	[CPSpecificationOptionId] [bigint] NULL,
	[CPOptionCategoryId] [bigint] NULL,
	[value] [nvarchar](4000) NULL,
	[priority] [float] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPDSpecificationOptionValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPInstance]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPInstance](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[CPInstanceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionId] [bigint] NULL,
	[CPInstanceUuid] [nvarchar](75) NULL,
	[sku] [nvarchar](75) NULL,
	[gtin] [nvarchar](75) NULL,
	[manufacturerPartNumber] [nvarchar](75) NULL,
	[purchasable] [bit] NULL,
	[width] [float] NULL,
	[height] [float] NULL,
	[depth] [float] NULL,
	[weight] [float] NULL,
	[price] [decimal](30, 16) NULL,
	[promoPrice] [decimal](30, 16) NULL,
	[cost] [decimal](30, 16) NULL,
	[published] [bit] NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[overrideSubscriptionInfo] [bit] NULL,
	[subscriptionEnabled] [bit] NULL,
	[subscriptionLength] [int] NULL,
	[subscriptionType] [nvarchar](75) NULL,
	[subscriptionTypeSettings] [nvarchar](max) NULL,
	[maxSubscriptionCycles] [bigint] NULL,
	[deliverySubscriptionEnabled] [bit] NULL,
	[deliverySubscriptionLength] [int] NULL,
	[deliverySubscriptionType] [nvarchar](75) NULL,
	[deliverySubTypeSettings] [nvarchar](75) NULL,
	[deliveryMaxSubscriptionCycles] [bigint] NULL,
	[unspsc] [nvarchar](75) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPInstanceOptionValueRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPInstanceOptionValueRel](
	[uuid_] [nvarchar](75) NULL,
	[CPInstanceOptionValueRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPDefinitionOptionRelId] [bigint] NULL,
	[CPDefinitionOptionValueRelId] [bigint] NULL,
	[CPInstanceId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CPInstanceOptionValueRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPLCommerceGroupAccountRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPLCommerceGroupAccountRel](
	[uuid_] [nvarchar](75) NULL,
	[CPLCommerceAccountGroupRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commercePriceListId] [bigint] NULL,
	[commerceAccountGroupId] [bigint] NULL,
	[order_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPLCommerceAccountGroupRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPMeasurementUnit]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPMeasurementUnit](
	[uuid_] [nvarchar](75) NULL,
	[CPMeasurementUnitId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[key_] [nvarchar](75) NULL,
	[rate] [float] NULL,
	[primary_] [bit] NULL,
	[priority] [float] NULL,
	[type_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPMeasurementUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPOption]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPOption](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[CPOptionId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[DDMFormFieldTypeName] [nvarchar](75) NULL,
	[facetable] [bit] NULL,
	[required] [bit] NULL,
	[skuContributor] [bit] NULL,
	[key_] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPOptionCategory]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPOptionCategory](
	[uuid_] [nvarchar](75) NULL,
	[CPOptionCategoryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[priority] [float] NULL,
	[key_] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPOptionCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPOptionValue]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPOptionValue](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[CPOptionValueId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPOptionId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[priority] [float] NULL,
	[key_] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPOptionValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPricingClassCPDefinitionRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPricingClassCPDefinitionRel](
	[CPricingClassCPDefinitionRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commercePricingClassId] [bigint] NULL,
	[CPDefinitionId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CPricingClassCPDefinitionRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CProduct]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CProduct](
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[CProductId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[publishedCPDefinitionId] [bigint] NULL,
	[latestVersion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPSpecificationOption]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPSpecificationOption](
	[uuid_] [nvarchar](75) NULL,
	[CPSpecificationOptionId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[CPOptionCategoryId] [bigint] NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[facetable] [bit] NULL,
	[key_] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPSpecificationOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTaxCategory]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTaxCategory](
	[externalReferenceCode] [nvarchar](75) NULL,
	[CPTaxCategoryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPTaxCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CShippingFixedOptionRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CShippingFixedOptionRel](
	[CShippingFixedOptionRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[commerceShippingMethodId] [bigint] NULL,
	[commerceShippingFixedOptionId] [bigint] NULL,
	[commerceInventoryWarehouseId] [bigint] NULL,
	[commerceCountryId] [bigint] NULL,
	[commerceRegionId] [bigint] NULL,
	[zip] [nvarchar](75) NULL,
	[weightFrom] [float] NULL,
	[weightTo] [float] NULL,
	[fixedPrice] [decimal](30, 16) NULL,
	[rateUnitWeightPrice] [decimal](30, 16) NULL,
	[ratePercentage] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CShippingFixedOptionRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTAutoResolutionInfo]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTAutoResolutionInfo](
	[mvccVersion] [bigint] NOT NULL,
	[ctAutoResolutionInfoId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[ctCollectionId] [bigint] NULL,
	[modelClassNameId] [bigint] NULL,
	[sourceModelClassPK] [bigint] NULL,
	[targetModelClassPK] [bigint] NULL,
	[conflictIdentifier] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ctAutoResolutionInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTCollection]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTCollection](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](200) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctEntryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[ctCollectionId] [bigint] NULL,
	[modelClassNameId] [bigint] NULL,
	[modelClassPK] [bigint] NULL,
	[modelMvccVersion] [bigint] NULL,
	[changeType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ctEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTMessage]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTMessage](
	[mvccVersion] [bigint] NOT NULL,
	[ctMessageId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[ctCollectionId] [bigint] NULL,
	[messageContent] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ctMessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPreferences]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPreferences](
	[mvccVersion] [bigint] NOT NULL,
	[ctPreferencesId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[ctCollectionId] [bigint] NULL,
	[previousCtCollectionId] [bigint] NULL,
	[confirmationEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ctPreferencesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTProcess]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTProcess](
	[mvccVersion] [bigint] NOT NULL,
	[ctProcessId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[ctCollectionId] [bigint] NULL,
	[backgroundTaskId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ctProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTSContent]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTSContent](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctsContentId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[repositoryId] [bigint] NULL,
	[path_] [nvarchar](75) NULL,
	[version] [nvarchar](75) NULL,
	[data_] [image] NULL,
	[size_] [bigint] NULL,
	[storeType] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[ctsContentId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DASHBOARD]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DASHBOARD](
	[ID] [varchar](255) NOT NULL,
	[COMPANY_ID] [numeric](19, 0) NULL,
	[CREATE_DATE] [datetime] NULL,
	[IS_DELETED] [tinyint] NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[NAME] [varchar](255) NULL,
	[ORG_ID] [numeric](19, 0) NULL,
	[PLAN_TYPE] [varchar](255) NULL,
	[LR_USER_ID] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DASHBOARD_TEST_CASE]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DASHBOARD_TEST_CASE](
	[DASHBOARD_ID] [varchar](255) NOT NULL,
	[TEST_CASE_ID] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DASHBOARD_TEST_SUITE]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DASHBOARD_TEST_SUITE](
	[DASHBOARD_ID] [varchar](255) NOT NULL,
	[TEST_SUITE_ID] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDLRecord]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDLRecord](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[recordId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[versionUserId] [bigint] NULL,
	[versionUserName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[DDMStorageId] [bigint] NULL,
	[recordSetId] [bigint] NULL,
	[recordSetVersion] [nvarchar](75) NULL,
	[className] [nvarchar](300) NULL,
	[classPK] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[displayIndex] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDLRecordSet]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDLRecordSet](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[recordSetId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[versionUserId] [bigint] NULL,
	[versionUserName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[DDMStructureId] [bigint] NULL,
	[recordSetKey] [nvarchar](75) NULL,
	[version] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[minDisplayRows] [int] NULL,
	[scope] [int] NULL,
	[settings_] [nvarchar](max) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[recordSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDLRecordSetVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDLRecordSetVersion](
	[mvccVersion] [bigint] NOT NULL,
	[recordSetVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[recordSetId] [bigint] NULL,
	[DDMStructureVersionId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[settings_] [nvarchar](max) NULL,
	[version] [nvarchar](75) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[recordSetVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDLRecordVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDLRecordVersion](
	[mvccVersion] [bigint] NOT NULL,
	[recordVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[DDMStorageId] [bigint] NULL,
	[recordSetId] [bigint] NULL,
	[recordSetVersion] [nvarchar](75) NULL,
	[recordId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[displayIndex] [int] NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[recordVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMContent]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMContent](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[contentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[data_] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[contentId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMDataProviderInstance]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMDataProviderInstance](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[dataProviderInstanceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[definition] [nvarchar](max) NULL,
	[type_] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[dataProviderInstanceId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMDataProviderInstanceLink]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMDataProviderInstanceLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[dataProviderInstanceLinkId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[dataProviderInstanceId] [bigint] NULL,
	[structureId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[dataProviderInstanceLinkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMFormInstance]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMFormInstance](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[formInstanceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[versionUserId] [bigint] NULL,
	[versionUserName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[structureId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[settings_] [nvarchar](max) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[formInstanceId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMFormInstanceRecord]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMFormInstanceRecord](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[formInstanceRecordId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[versionUserId] [bigint] NULL,
	[versionUserName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[formInstanceId] [bigint] NULL,
	[formInstanceVersion] [nvarchar](75) NULL,
	[storageId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[ipAddress] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[formInstanceRecordId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMFormInstanceRecordVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMFormInstanceRecordVersion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[formInstanceRecordVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[formInstanceId] [bigint] NULL,
	[formInstanceVersion] [nvarchar](75) NULL,
	[formInstanceRecordId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[storageId] [bigint] NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[formInstanceRecordVersionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMFormInstanceReport]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMFormInstanceReport](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[formInstanceReportId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[formInstanceId] [bigint] NULL,
	[data_] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[formInstanceReportId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMFormInstanceVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMFormInstanceVersion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[formInstanceVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[formInstanceId] [bigint] NULL,
	[structureVersionId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[settings_] [nvarchar](max) NULL,
	[version] [nvarchar](75) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[formInstanceVersionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMStorageLink]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMStorageLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[storageLinkId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[structureId] [bigint] NULL,
	[structureVersionId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[storageLinkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMStructure]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMStructure](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[structureId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[versionUserId] [bigint] NULL,
	[versionUserName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentStructureId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[structureKey] [nvarchar](75) NULL,
	[version] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[definition] [nvarchar](max) NULL,
	[storageType] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[structureId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMStructureLayout]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMStructureLayout](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[structureLayoutId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[structureLayoutKey] [nvarchar](75) NULL,
	[structureVersionId] [bigint] NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[definition] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[structureLayoutId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMStructureLink]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMStructureLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[structureLinkId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[structureId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[structureLinkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMStructureVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMStructureVersion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[structureVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[structureId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[parentStructureId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[definition] [nvarchar](max) NULL,
	[storageType] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[structureVersionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMTemplate]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMTemplate](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[templateId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[versionUserId] [bigint] NULL,
	[versionUserName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[resourceClassNameId] [bigint] NULL,
	[templateKey] [nvarchar](75) NULL,
	[version] [nvarchar](75) NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[type_] [nvarchar](75) NULL,
	[mode_] [nvarchar](75) NULL,
	[language] [nvarchar](75) NULL,
	[script] [nvarchar](max) NULL,
	[cacheable] [bit] NULL,
	[smallImage] [bit] NULL,
	[smallImageId] [bigint] NULL,
	[smallImageURL] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[templateId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMTemplateLink]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMTemplateLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[templateLinkId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[templateId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[templateLinkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDMTemplateVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDMTemplateVersion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[templateVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[templateId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[language] [nvarchar](75) NULL,
	[script] [nvarchar](max) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[templateVersionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEDataDefinitionFieldLink]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEDataDefinitionFieldLink](
	[uuid_] [nvarchar](75) NULL,
	[deDataDefinitionFieldLinkId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[ddmStructureId] [bigint] NULL,
	[fieldName] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[deDataDefinitionFieldLinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEDataListView]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEDataListView](
	[uuid_] [nvarchar](75) NULL,
	[deDataListViewId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[appliedFilters] [nvarchar](max) NULL,
	[ddmStructureId] [bigint] NULL,
	[fieldNames] [nvarchar](max) NULL,
	[name] [nvarchar](4000) NULL,
	[sortField] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[deDataListViewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEFECT_COMMENTS]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEFECT_COMMENTS](
	[ID] [varchar](255) NOT NULL,
	[COMMENT] [varchar](1536) NULL,
	[COMMENT_ID] [numeric](19, 0) NULL,
	[CREATED_DATE] [datetime] NULL,
	[DEFECT_ID] [numeric](19, 0) NULL,
	[DEFECT_KEY] [varchar](255) NULL,
	[IS_DELETE] [tinyint] NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[AUTHOR_NAME] [varchar](255) NULL,
	[UPDATED_DATE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEFECT_TRACKER]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEFECT_TRACKER](
	[ID] [varchar](255) NOT NULL,
	[CREATED_DATE] [datetime] NULL,
	[DEFECT_ID] [numeric](19, 0) NULL,
	[DEFECT_KEY] [varchar](255) NULL,
	[IS_DELETE] [tinyint] NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[REPORTER] [varchar](255) NULL,
	[STATUS] [varchar](255) NULL,
	[TEST_CASE_ID] [varchar](255) NULL,
	[ASSIGNEE] [varchar](255) NULL,
	[SUMMARY] [varchar](255) NULL,
	[PLAN_TYPE] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepotAppCustomization]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepotAppCustomization](
	[mvccVersion] [bigint] NOT NULL,
	[depotAppCustomizationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[depotEntryId] [bigint] NULL,
	[enabled] [bit] NULL,
	[portletId] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[depotAppCustomizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepotEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepotEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[depotEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[depotEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepotEntryGroupRel]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepotEntryGroupRel](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[depotEntryGroupRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[ddmStructuresAvailable] [bit] NULL,
	[depotEntryId] [bigint] NULL,
	[searchable] [bit] NULL,
	[toGroupId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[depotEntryGroupRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISCOVER_IVR]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISCOVER_IVR](
	[uuid_] [nvarchar](75) NULL,
	[id_] [bigint] NOT NULL,
	[testCaseName] [nvarchar](75) NULL,
	[expectedTextLocale] [nvarchar](75) NULL,
	[calledNumber] [nvarchar](75) NULL,
	[emailAlerts] [nvarchar](2000) NULL,
	[crawlDepth] [int] NULL,
	[maxTestcasesLimit] [int] NULL,
	[groupId] [bigint] NULL,
	[lrOrgId] [bigint] NULL,
	[failedTestStepData] [nvarchar](2000) NULL,
	[recognitionInputData] [nvarchar](max) NULL,
	[dataDrivenData] [nvarchar](max) NULL,
	[dataDrivenfileName] [nvarchar](75) NULL,
	[dataDrivenFilePath] [nvarchar](2000) NULL,
	[status] [nvarchar](75) NULL,
	[method] [nvarchar](75) NULL,
	[ignoreUserIntervention] [bit] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[byPassStepsWithoutDTMF] [bit] NULL,
	[progressedSteps] [nvarchar](max) NULL,
	[processedSteps] [nvarchar](max) NULL,
	[asrParams] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DispatchLog]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DispatchLog](
	[mvccVersion] [bigint] NOT NULL,
	[dispatchLogId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[dispatchTriggerId] [bigint] NULL,
	[endDate] [datetime2](6) NULL,
	[error] [nvarchar](max) NULL,
	[output_] [nvarchar](max) NULL,
	[startDate] [datetime2](6) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dispatchLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DispatchTrigger]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DispatchTrigger](
	[mvccVersion] [bigint] NOT NULL,
	[dispatchTriggerId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[active_] [bit] NULL,
	[cronExpression] [nvarchar](75) NULL,
	[dispatchTaskClusterMode] [int] NULL,
	[dispatchTaskExecutorType] [nvarchar](75) NULL,
	[dispatchTaskSettings] [nvarchar](max) NULL,
	[endDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[overlapAllowed] [bit] NULL,
	[startDate] [datetime2](6) NULL,
	[system_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[dispatchTriggerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLContent]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLContent](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[contentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[repositoryId] [bigint] NULL,
	[path_] [nvarchar](255) NULL,
	[version] [nvarchar](75) NULL,
	[data_] [image] NULL,
	[size_] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[contentId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFileEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFileEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fileEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[repositoryId] [bigint] NULL,
	[folderId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[name] [nvarchar](255) NULL,
	[fileName] [nvarchar](255) NULL,
	[extension] [nvarchar](75) NULL,
	[mimeType] [nvarchar](75) NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](4000) NULL,
	[extraSettings] [nvarchar](max) NULL,
	[fileEntryTypeId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[size_] [bigint] NULL,
	[smallImageId] [bigint] NULL,
	[largeImageId] [bigint] NULL,
	[custom1ImageId] [bigint] NULL,
	[custom2ImageId] [bigint] NULL,
	[manualCheckInRequired] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fileEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFileEntryMetadata]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFileEntryMetadata](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fileEntryMetadataId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[DDMStorageId] [bigint] NULL,
	[DDMStructureId] [bigint] NULL,
	[fileEntryId] [bigint] NULL,
	[fileVersionId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[fileEntryMetadataId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFileEntryType]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFileEntryType](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fileEntryTypeId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[dataDefinitionId] [bigint] NULL,
	[fileEntryTypeKey] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fileEntryTypeId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFileEntryTypes_DLFolders]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFileEntryTypes_DLFolders](
	[companyId] [bigint] NOT NULL,
	[fileEntryTypeId] [bigint] NOT NULL,
	[folderId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[fileEntryTypeId] ASC,
	[folderId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFileShortcut]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFileShortcut](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fileShortcutId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[repositoryId] [bigint] NULL,
	[folderId] [bigint] NULL,
	[toFileEntryId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[active_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fileShortcutId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFileVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFileVersion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fileVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[repositoryId] [bigint] NULL,
	[folderId] [bigint] NULL,
	[fileEntryId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[fileName] [nvarchar](255) NULL,
	[extension] [nvarchar](75) NULL,
	[mimeType] [nvarchar](75) NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](4000) NULL,
	[changeLog] [nvarchar](75) NULL,
	[extraSettings] [nvarchar](max) NULL,
	[fileEntryTypeId] [bigint] NULL,
	[version] [nvarchar](75) NULL,
	[size_] [bigint] NULL,
	[checksum] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fileVersionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFileVersionPreview]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFileVersionPreview](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[dlFileVersionPreviewId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[fileEntryId] [bigint] NULL,
	[fileVersionId] [bigint] NULL,
	[previewStatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dlFileVersionPreviewId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLFolder]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLFolder](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[folderId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[repositoryId] [bigint] NULL,
	[mountPoint] [bit] NULL,
	[parentFolderId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPostDate] [datetime2](6) NULL,
	[defaultFileEntryTypeId] [bigint] NULL,
	[hidden_] [bit] NULL,
	[restrictionType] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[folderId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLOpenerFileEntryReference]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLOpenerFileEntryReference](
	[dlOpenerFileEntryReferenceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[referenceKey] [nvarchar](75) NULL,
	[referenceType] [nvarchar](75) NULL,
	[fileEntryId] [bigint] NULL,
	[type_] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dlOpenerFileEntryReferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DLSyncEvent]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DLSyncEvent](
	[syncEventId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[modifiedTime] [bigint] NULL,
	[event] [nvarchar](75) NULL,
	[type_] [nvarchar](75) NULL,
	[typePK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[syncEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMAIL_ALERT_LEVEL]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL_ALERT_LEVEL](
	[ID] [varchar](255) NOT NULL,
	[ALERT_LEVEL] [int] NULL,
	[ALERT_TRIGGER_STATUS] [varchar](255) NULL,
	[ALERT_TYPE] [varchar](255) NULL,
	[EMAILS] [varchar](2048) NULL,
	[ERROR_COUNT] [int] NULL,
	[ALERT_TRIGGERED_DATE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAddress]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAddress](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[emailAddressId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[address] [nvarchar](254) NULL,
	[typeId] [bigint] NULL,
	[primary_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[emailAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpandoColumn]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpandoColumn](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[columnId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[tableId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[defaultData] [nvarchar](max) NULL,
	[typeSettings] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[columnId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpandoRow]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpandoRow](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[rowId_] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[modifiedDate] [datetime2](6) NULL,
	[tableId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[rowId_] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpandoTable]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpandoTable](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[tableId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[tableId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpandoValue]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpandoValue](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[valueId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[tableId] [bigint] NULL,
	[columnId] [bigint] NULL,
	[rowId_] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[data_] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[valueId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExportImportConfiguration]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportImportConfiguration](
	[mvccVersion] [bigint] NOT NULL,
	[exportImportConfigurationId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](4000) NULL,
	[type_] [int] NULL,
	[settings_] [nvarchar](max) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[exportImportConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FILE_MANAGER]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FILE_MANAGER](
	[ID] [varchar](255) NOT NULL,
	[CANONICAL_PATH] [varchar](255) NULL,
	[CREATED_DATE] [datetime] NULL,
	[IS_DELETE] [tinyint] NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[MODIFIED_DATE] [datetime] NULL,
	[NAME] [varchar](255) NULL,
	[PATH] [varchar](255) NULL,
	[PLAN_TYPE] [varchar](255) NULL,
	[SIZE] [varchar](255) NULL,
	[USER_ID] [numeric](19, 0) NULL,
	[FOLDER_ID] [varchar](255) NULL,
	[GIT_SYNCED] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FOLDER]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOLDER](
	[ID] [varchar](255) NOT NULL,
	[IS_DELETED] [tinyint] NULL,
	[FOLDER_NAME] [varchar](255) NULL,
	[FOLDER_PATH] [varchar](255) NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[PARENT_FOLDER_ID] [varchar](255) NULL,
	[PLAN_TYPE] [varchar](255) NULL,
	[TYPE] [varchar](255) NULL,
	[LR_USER_ID] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FragmentCollection]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FragmentCollection](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fragmentCollectionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[fragmentCollectionKey] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fragmentCollectionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FragmentComposition]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FragmentComposition](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fragmentCompositionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[fragmentCollectionId] [bigint] NULL,
	[fragmentCompositionKey] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](75) NULL,
	[data_] [nvarchar](max) NULL,
	[previewFileEntryId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fragmentCompositionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FragmentEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FragmentEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[headId] [bigint] NULL,
	[head] [bit] NULL,
	[fragmentEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[fragmentCollectionId] [bigint] NULL,
	[fragmentEntryKey] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[css] [nvarchar](max) NULL,
	[html] [nvarchar](max) NULL,
	[js] [nvarchar](max) NULL,
	[cacheable] [bit] NULL,
	[configuration] [nvarchar](max) NULL,
	[previewFileEntryId] [bigint] NULL,
	[readOnly] [bit] NULL,
	[type_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fragmentEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FragmentEntryLink]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FragmentEntryLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[fragmentEntryLinkId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[originalFragmentEntryLinkId] [bigint] NULL,
	[fragmentEntryId] [bigint] NULL,
	[segmentsExperienceId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[plid] [bigint] NULL,
	[css] [nvarchar](max) NULL,
	[html] [nvarchar](max) NULL,
	[js] [nvarchar](max) NULL,
	[configuration] [nvarchar](max) NULL,
	[editableValues] [nvarchar](max) NULL,
	[namespace] [nvarchar](75) NULL,
	[position] [int] NULL,
	[rendererKey] [nvarchar](200) NULL,
	[lastPropagationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fragmentEntryLinkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FragmentEntryVersion]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FragmentEntryVersion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[fragmentEntryVersionId] [bigint] NOT NULL,
	[version] [int] NULL,
	[uuid_] [nvarchar](75) NULL,
	[fragmentEntryId] [bigint] NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[fragmentCollectionId] [bigint] NULL,
	[fragmentEntryKey] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[css] [nvarchar](max) NULL,
	[html] [nvarchar](max) NULL,
	[js] [nvarchar](max) NULL,
	[cacheable] [bit] NULL,
	[configuration] [nvarchar](max) NULL,
	[previewFileEntryId] [bigint] NULL,
	[readOnly] [bit] NULL,
	[type_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[fragmentEntryVersionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendlyURLEntry]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendlyURLEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[defaultLanguageId] [nvarchar](75) NULL,
	[friendlyURLEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[friendlyURLEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendlyURLEntryLocalization]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendlyURLEntryLocalization](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[friendlyURLEntryLocalizationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[friendlyURLEntryId] [bigint] NULL,
	[languageId] [nvarchar](75) NULL,
	[urlTitle] [nvarchar](255) NULL,
	[groupId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[friendlyURLEntryLocalizationId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendlyURLEntryMapping]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendlyURLEntryMapping](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[friendlyURLEntryMappingId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[friendlyURLEntryId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[friendlyURLEntryMappingId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[groupId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[creatorUserId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[parentGroupId] [bigint] NULL,
	[liveGroupId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[groupKey] [nvarchar](150) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[type_] [int] NULL,
	[typeSettings] [nvarchar](max) NULL,
	[manualMembership] [bit] NULL,
	[membershipRestriction] [int] NULL,
	[friendlyURL] [nvarchar](255) NULL,
	[site] [bit] NULL,
	[remoteStagingGroupCount] [int] NULL,
	[inheritContent] [bit] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups_Orgs]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups_Orgs](
	[companyId] [bigint] NOT NULL,
	[groupId] [bigint] NOT NULL,
	[organizationId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupId] ASC,
	[organizationId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups_Roles]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups_Roles](
	[companyId] [bigint] NOT NULL,
	[groupId] [bigint] NOT NULL,
	[roleId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupId] ASC,
	[roleId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups_UserGroups]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups_UserGroups](
	[companyId] [bigint] NOT NULL,
	[groupId] [bigint] NOT NULL,
	[userGroupId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupId] ASC,
	[userGroupId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IM_MemberRequest]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IM_MemberRequest](
	[memberRequestId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[key_] [nvarchar](75) NULL,
	[receiverUserId] [bigint] NULL,
	[invitedRoleId] [bigint] NULL,
	[invitedTeamId] [bigint] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[memberRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[imageId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[modifiedDate] [datetime2](6) NULL,
	[type_] [nvarchar](75) NULL,
	[height] [int] NULL,
	[width] [int] NULL,
	[size_] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[imageId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalArticle]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalArticle](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[id_] [bigint] NOT NULL,
	[resourcePrimKey] [bigint] NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[folderId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[articleId] [nvarchar](75) NULL,
	[version] [float] NULL,
	[urlTitle] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[DDMStructureKey] [nvarchar](75) NULL,
	[DDMTemplateKey] [nvarchar](75) NULL,
	[defaultLanguageId] [nvarchar](75) NULL,
	[layoutUuid] [nvarchar](75) NULL,
	[displayDate] [datetime2](6) NULL,
	[expirationDate] [datetime2](6) NULL,
	[reviewDate] [datetime2](6) NULL,
	[indexable] [bit] NULL,
	[smallImage] [bit] NULL,
	[smallImageId] [bigint] NULL,
	[smallImageURL] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalArticleLocalization]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalArticleLocalization](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[articleLocalizationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[articlePK] [bigint] NULL,
	[title] [nvarchar](400) NULL,
	[description] [nvarchar](4000) NULL,
	[languageId] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[articleLocalizationId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalArticleResource]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalArticleResource](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[resourcePrimKey] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[articleId] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[resourcePrimKey] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalContentSearch]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalContentSearch](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[contentSearchId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[privateLayout] [bit] NULL,
	[layoutId] [bigint] NULL,
	[portletId] [nvarchar](200) NULL,
	[articleId] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[contentSearchId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalFeed]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalFeed](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[id_] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[feedId] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[DDMStructureKey] [nvarchar](75) NULL,
	[DDMTemplateKey] [nvarchar](75) NULL,
	[DDMRendererTemplateKey] [nvarchar](75) NULL,
	[delta] [int] NULL,
	[orderByCol] [nvarchar](75) NULL,
	[orderByType] [nvarchar](75) NULL,
	[targetLayoutFriendlyUrl] [nvarchar](255) NULL,
	[targetPortletId] [nvarchar](200) NULL,
	[contentField] [nvarchar](75) NULL,
	[feedFormat] [nvarchar](75) NULL,
	[feedVersion] [float] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalFolder]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalFolder](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[folderId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentFolderId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](4000) NULL,
	[restrictionType] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[folderId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoAction]    Script Date: 15-12-2021 13:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoAction](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoActionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoClassName] [nvarchar](200) NULL,
	[kaleoClassPK] [bigint] NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNodeName] [nvarchar](200) NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](4000) NULL,
	[executionType] [nvarchar](20) NULL,
	[script] [nvarchar](max) NULL,
	[scriptLanguage] [nvarchar](75) NULL,
	[scriptRequiredContexts] [nvarchar](4000) NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoCondition]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoCondition](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoConditionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNodeId] [bigint] NULL,
	[script] [nvarchar](max) NULL,
	[scriptLanguage] [nvarchar](75) NULL,
	[scriptRequiredContexts] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoDefinition]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoDefinition](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoDefinitionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](200) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[content] [nvarchar](max) NULL,
	[scope] [nvarchar](75) NULL,
	[version] [int] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoDefinitionVersion]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoDefinitionVersion](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoDefinitionVersionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[name] [nvarchar](200) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[content] [nvarchar](max) NULL,
	[version] [nvarchar](75) NULL,
	[startKaleoNodeId] [bigint] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoDefinitionVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoInstance]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoInstance](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoInstanceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoDefinitionName] [nvarchar](200) NULL,
	[kaleoDefinitionVersion] [int] NULL,
	[rootKaleoInstanceTokenId] [bigint] NULL,
	[className] [nvarchar](200) NULL,
	[classPK] [bigint] NULL,
	[completed] [bit] NULL,
	[completionDate] [datetime2](6) NULL,
	[workflowContext] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoInstanceToken]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoInstanceToken](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoInstanceTokenId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoInstanceId] [bigint] NULL,
	[parentKaleoInstanceTokenId] [bigint] NULL,
	[currentKaleoNodeId] [bigint] NULL,
	[currentKaleoNodeName] [nvarchar](200) NULL,
	[className] [nvarchar](200) NULL,
	[classPK] [bigint] NULL,
	[completed] [bit] NULL,
	[completionDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoInstanceTokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoLog]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoLog](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoLogId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoClassName] [nvarchar](200) NULL,
	[kaleoClassPK] [bigint] NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoInstanceId] [bigint] NULL,
	[kaleoInstanceTokenId] [bigint] NULL,
	[kaleoTaskInstanceTokenId] [bigint] NULL,
	[kaleoNodeName] [nvarchar](200) NULL,
	[terminalKaleoNode] [bit] NULL,
	[kaleoActionId] [bigint] NULL,
	[kaleoActionName] [nvarchar](200) NULL,
	[kaleoActionDescription] [nvarchar](4000) NULL,
	[previousKaleoNodeId] [bigint] NULL,
	[previousKaleoNodeName] [nvarchar](200) NULL,
	[previousAssigneeClassName] [nvarchar](200) NULL,
	[previousAssigneeClassPK] [bigint] NULL,
	[currentAssigneeClassName] [nvarchar](200) NULL,
	[currentAssigneeClassPK] [bigint] NULL,
	[type_] [nvarchar](50) NULL,
	[comment_] [nvarchar](max) NULL,
	[startDate] [datetime2](6) NULL,
	[endDate] [datetime2](6) NULL,
	[duration] [bigint] NULL,
	[workflowContext] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoNode]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoNode](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoNodeId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[name] [nvarchar](200) NULL,
	[metadata] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[type_] [nvarchar](20) NULL,
	[initial_] [bit] NULL,
	[terminal] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoNotification]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoNotification](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoNotificationId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoClassName] [nvarchar](200) NULL,
	[kaleoClassPK] [bigint] NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNodeName] [nvarchar](200) NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](4000) NULL,
	[executionType] [nvarchar](20) NULL,
	[template] [nvarchar](max) NULL,
	[templateLanguage] [nvarchar](75) NULL,
	[notificationTypes] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoNotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoNotificationRecipient]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoNotificationRecipient](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoNotificationRecipientId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNotificationId] [bigint] NULL,
	[recipientClassName] [nvarchar](200) NULL,
	[recipientClassPK] [bigint] NULL,
	[recipientRoleType] [int] NULL,
	[recipientScript] [nvarchar](max) NULL,
	[recipientScriptLanguage] [nvarchar](75) NULL,
	[recipientScriptContexts] [nvarchar](4000) NULL,
	[address] [nvarchar](255) NULL,
	[notificationReceptionType] [nvarchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoNotificationRecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTask]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTask](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTaskId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNodeId] [bigint] NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTaskAssignment]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTaskAssignment](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTaskAssignmentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoClassName] [nvarchar](200) NULL,
	[kaleoClassPK] [bigint] NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNodeId] [bigint] NULL,
	[assigneeClassName] [nvarchar](200) NULL,
	[assigneeClassPK] [bigint] NULL,
	[assigneeActionId] [nvarchar](75) NULL,
	[assigneeScript] [nvarchar](max) NULL,
	[assigneeScriptLanguage] [nvarchar](75) NULL,
	[assigneeScriptRequiredContexts] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTaskAssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTaskAssignmentInstance]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTaskAssignmentInstance](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTaskAssignmentInstanceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoInstanceId] [bigint] NULL,
	[kaleoInstanceTokenId] [bigint] NULL,
	[kaleoTaskInstanceTokenId] [bigint] NULL,
	[kaleoTaskId] [bigint] NULL,
	[kaleoTaskName] [nvarchar](200) NULL,
	[assigneeClassName] [nvarchar](200) NULL,
	[assigneeClassPK] [bigint] NULL,
	[completed] [bit] NULL,
	[completionDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTaskAssignmentInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTaskForm]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTaskForm](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTaskFormId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNodeId] [bigint] NULL,
	[kaleoTaskId] [bigint] NULL,
	[kaleoTaskName] [nvarchar](200) NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](4000) NULL,
	[formCompanyId] [bigint] NULL,
	[formDefinition] [nvarchar](4000) NULL,
	[formGroupId] [bigint] NULL,
	[formId] [bigint] NULL,
	[formUuid] [nvarchar](75) NULL,
	[metadata] [nvarchar](4000) NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTaskFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTaskFormInstance]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTaskFormInstance](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTaskFormInstanceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoInstanceId] [bigint] NULL,
	[kaleoTaskId] [bigint] NULL,
	[kaleoTaskInstanceTokenId] [bigint] NULL,
	[kaleoTaskFormId] [bigint] NULL,
	[formValues] [nvarchar](4000) NULL,
	[formValueEntryGroupId] [bigint] NULL,
	[formValueEntryId] [bigint] NULL,
	[formValueEntryUuid] [nvarchar](75) NULL,
	[metadata] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTaskFormInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTaskInstanceToken]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTaskInstanceToken](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTaskInstanceTokenId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoInstanceId] [bigint] NULL,
	[kaleoInstanceTokenId] [bigint] NULL,
	[kaleoTaskId] [bigint] NULL,
	[kaleoTaskName] [nvarchar](200) NULL,
	[className] [nvarchar](200) NULL,
	[classPK] [bigint] NULL,
	[completionUserId] [bigint] NULL,
	[completed] [bit] NULL,
	[completionDate] [datetime2](6) NULL,
	[dueDate] [datetime2](6) NULL,
	[workflowContext] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTaskInstanceTokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTimer]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTimer](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTimerId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoClassName] [nvarchar](200) NULL,
	[kaleoClassPK] [bigint] NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[blocking] [bit] NULL,
	[description] [nvarchar](4000) NULL,
	[duration] [float] NULL,
	[scale] [nvarchar](75) NULL,
	[recurrenceDuration] [float] NULL,
	[recurrenceScale] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTimerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTimerInstanceToken]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTimerInstanceToken](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTimerInstanceTokenId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoClassName] [nvarchar](200) NULL,
	[kaleoClassPK] [bigint] NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoInstanceId] [bigint] NULL,
	[kaleoInstanceTokenId] [bigint] NULL,
	[kaleoTaskInstanceTokenId] [bigint] NULL,
	[kaleoTimerId] [bigint] NULL,
	[kaleoTimerName] [nvarchar](200) NULL,
	[blocking] [bit] NULL,
	[completionUserId] [bigint] NULL,
	[completed] [bit] NULL,
	[completionDate] [datetime2](6) NULL,
	[workflowContext] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTimerInstanceTokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KaleoTransition]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KaleoTransition](
	[mvccVersion] [bigint] NOT NULL,
	[kaleoTransitionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](200) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[kaleoDefinitionId] [bigint] NULL,
	[kaleoDefinitionVersionId] [bigint] NULL,
	[kaleoNodeId] [bigint] NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](4000) NULL,
	[sourceKaleoNodeId] [bigint] NULL,
	[sourceKaleoNodeName] [nvarchar](200) NULL,
	[targetKaleoNodeId] [bigint] NULL,
	[targetKaleoNodeName] [nvarchar](200) NULL,
	[defaultTransition] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[kaleoTransitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KBArticle]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KBArticle](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[kbArticleId] [bigint] NOT NULL,
	[resourcePrimKey] [bigint] NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[rootResourcePrimKey] [bigint] NULL,
	[parentResourceClassNameId] [bigint] NULL,
	[parentResourcePrimKey] [bigint] NULL,
	[kbFolderId] [bigint] NULL,
	[version] [int] NULL,
	[title] [nvarchar](4000) NULL,
	[urlTitle] [nvarchar](75) NULL,
	[content] [nvarchar](max) NULL,
	[description] [nvarchar](4000) NULL,
	[priority] [float] NULL,
	[sections] [nvarchar](4000) NULL,
	[latest] [bit] NULL,
	[main] [bit] NULL,
	[sourceURL] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[kbArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KBComment]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KBComment](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[kbCommentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[content] [nvarchar](4000) NULL,
	[userRating] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kbCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KBFolder]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KBFolder](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[kbFolderId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentKBFolderId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[urlTitle] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[kbFolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KBTemplate]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KBTemplate](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[kbTemplateId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[title] [nvarchar](4000) NULL,
	[content] [nvarchar](max) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[kbTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Layout]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Layout](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[plid] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentPlid] [bigint] NULL,
	[privateLayout] [bit] NULL,
	[layoutId] [bigint] NULL,
	[parentLayoutId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](max) NULL,
	[keywords] [nvarchar](4000) NULL,
	[robots] [nvarchar](4000) NULL,
	[type_] [nvarchar](75) NULL,
	[typeSettings] [nvarchar](max) NULL,
	[hidden_] [bit] NULL,
	[system_] [bit] NULL,
	[friendlyURL] [nvarchar](255) NULL,
	[iconImageId] [bigint] NULL,
	[themeId] [nvarchar](75) NULL,
	[colorSchemeId] [nvarchar](75) NULL,
	[styleBookEntryId] [bigint] NULL,
	[css] [nvarchar](max) NULL,
	[priority] [int] NULL,
	[masterLayoutPlid] [bigint] NULL,
	[layoutPrototypeUuid] [nvarchar](75) NULL,
	[layoutPrototypeLinkEnabled] [bit] NULL,
	[sourcePrototypeLayoutUuid] [nvarchar](75) NULL,
	[publishDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[plid] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutBranch]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutBranch](
	[mvccVersion] [bigint] NOT NULL,
	[layoutBranchId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[layoutSetBranchId] [bigint] NULL,
	[plid] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[master] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutClassedModelUsage]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutClassedModelUsage](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutClassedModelUsageId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[containerKey] [nvarchar](200) NULL,
	[containerType] [bigint] NULL,
	[plid] [bigint] NULL,
	[type_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutClassedModelUsageId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutFriendlyURL]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutFriendlyURL](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutFriendlyURLId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[plid] [bigint] NULL,
	[privateLayout] [bit] NULL,
	[friendlyURL] [nvarchar](255) NULL,
	[languageId] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutFriendlyURLId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutPageTemplateCollection]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutPageTemplateCollection](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutPageTemplateCollectionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[lptCollectionKey] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutPageTemplateCollectionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutPageTemplateEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutPageTemplateEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutPageTemplateEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[layoutPageTemplateCollectionId] [bigint] NULL,
	[layoutPageTemplateEntryKey] [nvarchar](75) NULL,
	[classNameId] [bigint] NULL,
	[classTypeId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[previewFileEntryId] [bigint] NULL,
	[defaultTemplate] [bit] NULL,
	[layoutPrototypeId] [bigint] NULL,
	[plid] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutPageTemplateEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutPageTemplateStructure]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutPageTemplateStructure](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutPageTemplateStructureId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutPageTemplateStructureId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutPageTemplateStructureRel]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutPageTemplateStructureRel](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[lPageTemplateStructureRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[layoutPageTemplateStructureId] [bigint] NULL,
	[segmentsExperienceId] [bigint] NULL,
	[data_] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[lPageTemplateStructureRelId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutPrototype]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutPrototype](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutPrototypeId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[settings_] [nvarchar](4000) NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutPrototypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutRevision]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutRevision](
	[mvccVersion] [bigint] NOT NULL,
	[layoutRevisionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[layoutSetBranchId] [bigint] NULL,
	[layoutBranchId] [bigint] NULL,
	[parentLayoutRevisionId] [bigint] NULL,
	[head] [bit] NULL,
	[major] [bit] NULL,
	[plid] [bigint] NULL,
	[privateLayout] [bit] NULL,
	[name] [nvarchar](4000) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[keywords] [nvarchar](4000) NULL,
	[robots] [nvarchar](4000) NULL,
	[typeSettings] [nvarchar](max) NULL,
	[iconImageId] [bigint] NULL,
	[themeId] [nvarchar](75) NULL,
	[colorSchemeId] [nvarchar](75) NULL,
	[css] [nvarchar](max) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutRevisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutSEOEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutSEOEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutSEOEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[privateLayout] [bit] NULL,
	[layoutId] [bigint] NULL,
	[canonicalURL] [nvarchar](4000) NULL,
	[canonicalURLEnabled] [bit] NULL,
	[DDMStorageId] [bigint] NULL,
	[openGraphDescription] [nvarchar](4000) NULL,
	[openGraphDescriptionEnabled] [bit] NULL,
	[openGraphImageAlt] [nvarchar](4000) NULL,
	[openGraphImageFileEntryId] [bigint] NULL,
	[openGraphTitle] [nvarchar](4000) NULL,
	[openGraphTitleEnabled] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutSEOEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutSEOSite]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutSEOSite](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutSEOSiteId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[openGraphEnabled] [bit] NULL,
	[openGraphImageAlt] [nvarchar](4000) NULL,
	[openGraphImageFileEntryId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutSEOSiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutSet]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutSet](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[layoutSetId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[privateLayout] [bit] NULL,
	[logoId] [bigint] NULL,
	[themeId] [nvarchar](75) NULL,
	[colorSchemeId] [nvarchar](75) NULL,
	[css] [nvarchar](max) NULL,
	[settings_] [nvarchar](max) NULL,
	[layoutSetPrototypeUuid] [nvarchar](75) NULL,
	[layoutSetPrototypeLinkEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutSetId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutSetBranch]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutSetBranch](
	[mvccVersion] [bigint] NOT NULL,
	[layoutSetBranchId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[privateLayout] [bit] NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[master] [bit] NULL,
	[logoId] [bigint] NULL,
	[themeId] [nvarchar](75) NULL,
	[colorSchemeId] [nvarchar](75) NULL,
	[css] [nvarchar](max) NULL,
	[settings_] [nvarchar](max) NULL,
	[layoutSetPrototypeUuid] [nvarchar](75) NULL,
	[layoutSetPrototypeLinkEnabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutSetBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayoutSetPrototype]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutSetPrototype](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[layoutSetPrototypeId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[settings_] [nvarchar](4000) NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[layoutSetPrototypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lc_License]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lc_License](
	[licenseId] [bigint] NOT NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[vendor] [nvarchar](75) NULL,
	[productId] [nvarchar](75) NULL,
	[Ip] [nvarchar](75) NULL,
	[hostName] [nvarchar](75) NULL,
	[startDate] [datetime2](6) NULL,
	[endDate] [datetime2](6) NULL,
	[status] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[licenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiferayNodeData]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiferayNodeData](
	[auditId] [bigint] NOT NULL,
	[parentOrgId] [bigint] NULL,
	[parentOrgName] [nvarchar](75) NULL,
	[childOrgName] [nvarchar](75) NULL,
	[eventType] [nvarchar](75) NULL,
	[message] [nvarchar](max) NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[additionalInfo] [nvarchar](max) NULL,
	[onlineSync] [bit] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[auditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiferayNodeStatus]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiferayNodeStatus](
	[auditStatusId] [bigint] NOT NULL,
	[parentOrgId] [bigint] NULL,
	[expiryDate] [datetime2](6) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[auditStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListType]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListType](
	[mvccVersion] [bigint] NOT NULL,
	[listTypeId] [bigint] NOT NULL,
	[name] [nvarchar](75) NULL,
	[type_] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[listTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lock_]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lock_](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[lockId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[className] [nvarchar](75) NULL,
	[key_] [nvarchar](255) NULL,
	[owner] [nvarchar](1024) NULL,
	[inheritable] [bit] NULL,
	[expirationDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[lockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAKE_A_CALL_RETRY]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAKE_A_CALL_RETRY](
	[ID] [varchar](255) NOT NULL,
	[Error_Code] [varchar](255) NULL,
	[NoOf_Retries] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marketplace_App]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marketplace_App](
	[uuid_] [nvarchar](75) NULL,
	[appId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[remoteAppId] [bigint] NULL,
	[title] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[category] [nvarchar](75) NULL,
	[iconURL] [nvarchar](4000) NULL,
	[version] [nvarchar](75) NULL,
	[required] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[appId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marketplace_Module]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marketplace_Module](
	[uuid_] [nvarchar](75) NULL,
	[moduleId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[appId] [bigint] NULL,
	[bundleSymbolicName] [nvarchar](500) NULL,
	[bundleVersion] [nvarchar](75) NULL,
	[contextName] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[moduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBBan]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBBan](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[banId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[banUserId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[banId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBCategory]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBCategory](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[categoryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentCategoryId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[displayStyle] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBDiscussion]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBDiscussion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[discussionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[threadId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[discussionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBMailingList]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBMailingList](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[mailingListId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[categoryId] [bigint] NULL,
	[emailAddress] [nvarchar](254) NULL,
	[inProtocol] [nvarchar](75) NULL,
	[inServerName] [nvarchar](75) NULL,
	[inServerPort] [int] NULL,
	[inUseSSL] [bit] NULL,
	[inUserName] [nvarchar](75) NULL,
	[inPassword] [nvarchar](75) NULL,
	[inReadInterval] [int] NULL,
	[outEmailAddress] [nvarchar](254) NULL,
	[outCustom] [bit] NULL,
	[outServerName] [nvarchar](75) NULL,
	[outServerPort] [int] NULL,
	[outUseSSL] [bit] NULL,
	[outUserName] [nvarchar](75) NULL,
	[outPassword] [nvarchar](75) NULL,
	[allowAnonymous] [bit] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[mailingListId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBMessage]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBMessage](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[messageId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[categoryId] [bigint] NULL,
	[threadId] [bigint] NULL,
	[rootMessageId] [bigint] NULL,
	[parentMessageId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[subject] [nvarchar](75) NULL,
	[urlSubject] [nvarchar](255) NULL,
	[body] [nvarchar](max) NULL,
	[format] [nvarchar](75) NULL,
	[anonymous] [bit] NULL,
	[priority] [float] NULL,
	[allowPingbacks] [bit] NULL,
	[answer] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[messageId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBStatsUser]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBStatsUser](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[statsUserId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[messageCount] [int] NULL,
	[lastPostDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[statsUserId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBThread]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBThread](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[threadId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[categoryId] [bigint] NULL,
	[rootMessageId] [bigint] NULL,
	[rootMessageUserId] [bigint] NULL,
	[title] [nvarchar](75) NULL,
	[lastPostByUserId] [bigint] NULL,
	[lastPostDate] [datetime2](6) NULL,
	[priority] [float] NULL,
	[question] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[threadId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MBThreadFlag]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MBThreadFlag](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[threadFlagId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[threadId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[threadFlagId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MDRAction]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MDRAction](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[actionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[ruleGroupInstanceId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[type_] [nvarchar](255) NULL,
	[typeSettings] [nvarchar](max) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[actionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MDRRule]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MDRRule](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[ruleId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[ruleGroupId] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[type_] [nvarchar](255) NULL,
	[typeSettings] [nvarchar](max) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[ruleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MDRRuleGroup]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MDRRuleGroup](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[ruleGroupId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[ruleGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MDRRuleGroupInstance]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MDRRuleGroupInstance](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[ruleGroupInstanceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[ruleGroupId] [bigint] NULL,
	[priority] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[ruleGroupInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipRequest]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipRequest](
	[mvccVersion] [bigint] NOT NULL,
	[membershipRequestId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[comments] [nvarchar](4000) NULL,
	[replyComments] [nvarchar](4000) NULL,
	[replyDate] [datetime2](6) NULL,
	[replierUserId] [bigint] NULL,
	[statusId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[membershipRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OA2Auths_OA2ScopeGrants]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OA2Auths_OA2ScopeGrants](
	[companyId] [bigint] NOT NULL,
	[oAuth2AuthorizationId] [bigint] NOT NULL,
	[oAuth2ScopeGrantId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[oAuth2AuthorizationId] ASC,
	[oAuth2ScopeGrantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OAuth2Application]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OAuth2Application](
	[oAuth2ApplicationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[oA2AScopeAliasesId] [bigint] NULL,
	[allowedGrantTypes] [nvarchar](75) NULL,
	[clientCredentialUserId] [bigint] NULL,
	[clientCredentialUserName] [nvarchar](75) NULL,
	[clientId] [nvarchar](75) NULL,
	[clientProfile] [int] NULL,
	[clientSecret] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[features] [nvarchar](4000) NULL,
	[homePageURL] [nvarchar](4000) NULL,
	[iconFileEntryId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[privacyPolicyURL] [nvarchar](4000) NULL,
	[redirectURIs] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[oAuth2ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OAuth2ApplicationScopeAliases]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OAuth2ApplicationScopeAliases](
	[oA2AScopeAliasesId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[oAuth2ApplicationId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[oA2AScopeAliasesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OAuth2Authorization]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OAuth2Authorization](
	[oAuth2AuthorizationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[oAuth2ApplicationId] [bigint] NULL,
	[oA2AScopeAliasesId] [bigint] NULL,
	[accessTokenContent] [nvarchar](max) NULL,
	[accessTokenContentHash] [bigint] NULL,
	[accessTokenCreateDate] [datetime2](6) NULL,
	[accessTokenExpirationDate] [datetime2](6) NULL,
	[remoteHostInfo] [nvarchar](255) NULL,
	[remoteIPInfo] [nvarchar](75) NULL,
	[refreshTokenContent] [nvarchar](max) NULL,
	[refreshTokenContentHash] [bigint] NULL,
	[refreshTokenCreateDate] [datetime2](6) NULL,
	[refreshTokenExpirationDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[oAuth2AuthorizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OAuth2ScopeGrant]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OAuth2ScopeGrant](
	[oAuth2ScopeGrantId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[oA2AScopeAliasesId] [bigint] NULL,
	[applicationName] [nvarchar](255) NULL,
	[bundleSymbolicName] [nvarchar](255) NULL,
	[scope] [nvarchar](240) NULL,
	[scopeAliases] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[oAuth2ScopeGrantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[org_DeletedOrgs]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[org_DeletedOrgs](
	[id_] [bigint] NOT NULL,
	[deleted_org_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[org_Organization]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[org_Organization](
	[id_] [bigint] NOT NULL,
	[name] [nvarchar](75) NULL,
	[parent_id] [bigint] NULL,
	[members] [nvarchar](max) NULL,
	[lrOrgId] [bigint] NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[timeZoneId] [nvarchar](75) NULL,
	[ivrLocale] [nvarchar](75) NULL,
	[ports] [nvarchar](75) NULL,
	[reportsLifeInDays] [bigint] NULL,
	[serviceToken] [nvarchar](75) NULL,
	[allowedIpAddresses] [nvarchar](max) NULL,
	[nectarEndPoint] [nvarchar](max) NULL,
	[cliPrefix] [nvarchar](75) NULL,
	[interventionKeywords] [nvarchar](max) NULL,
	[dtmfMappings] [nvarchar](max) NULL,
	[dtmfMappingExceptions] [nvarchar](max) NULL,
	[emailAlertNoInput] [bit] NULL,
	[viewTranscription] [bit] NULL,
	[jiraEndPoint] [nvarchar](max) NULL,
	[jiraAuthType] [nvarchar](75) NULL,
	[jiraUserName] [nvarchar](75) NULL,
	[jiraPassword] [nvarchar](75) NULL,
	[jiraProjects] [nvarchar](75) NULL,
	[jiraInstanceType] [nvarchar](75) NULL,
	[gitlabEndPoint] [nvarchar](max) NULL,
	[gitlabProjectId] [nvarchar](75) NULL,
	[gitlabAuthorizationId] [nvarchar](75) NULL,
	[axEndPoint] [nvarchar](max) NULL,
	[axOrgServiceToken] [nvarchar](max) NULL,
	[noEmailAlertKeywords] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization_]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization_](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[organizationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentOrganizationId] [bigint] NULL,
	[treePath] [nvarchar](4000) NULL,
	[name] [nvarchar](100) NULL,
	[type_] [nvarchar](75) NULL,
	[recursable] [bit] NULL,
	[regionId] [bigint] NULL,
	[countryId] [bigint] NULL,
	[statusId] [bigint] NULL,
	[comments] [nvarchar](4000) NULL,
	[logoId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[organizationId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgGroupRole]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgGroupRole](
	[mvccVersion] [bigint] NOT NULL,
	[organizationId] [bigint] NOT NULL,
	[groupId] [bigint] NOT NULL,
	[roleId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[organizationId] ASC,
	[groupId] ASC,
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgLabor]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgLabor](
	[mvccVersion] [bigint] NOT NULL,
	[orgLaborId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[organizationId] [bigint] NULL,
	[typeId] [bigint] NULL,
	[sunOpen] [int] NULL,
	[sunClose] [int] NULL,
	[monOpen] [int] NULL,
	[monClose] [int] NULL,
	[tueOpen] [int] NULL,
	[tueClose] [int] NULL,
	[wedOpen] [int] NULL,
	[wedClose] [int] NULL,
	[thuOpen] [int] NULL,
	[thuClose] [int] NULL,
	[friOpen] [int] NULL,
	[friClose] [int] NULL,
	[satOpen] [int] NULL,
	[satClose] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orgLaborId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasswordPolicy]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordPolicy](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[passwordPolicyId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[defaultPolicy] [bit] NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[changeable] [bit] NULL,
	[changeRequired] [bit] NULL,
	[minAge] [bigint] NULL,
	[checkSyntax] [bit] NULL,
	[allowDictionaryWords] [bit] NULL,
	[minAlphanumeric] [int] NULL,
	[minLength] [int] NULL,
	[minLowerCase] [int] NULL,
	[minNumbers] [int] NULL,
	[minSymbols] [int] NULL,
	[minUpperCase] [int] NULL,
	[regex] [nvarchar](4000) NULL,
	[history] [bit] NULL,
	[historyCount] [int] NULL,
	[expireable] [bit] NULL,
	[maxAge] [bigint] NULL,
	[warningTime] [bigint] NULL,
	[graceLimit] [int] NULL,
	[lockout] [bit] NULL,
	[maxFailure] [int] NULL,
	[lockoutDuration] [bigint] NULL,
	[requireUnlock] [bit] NULL,
	[resetFailureCount] [bigint] NULL,
	[resetTicketMaxAge] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[passwordPolicyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasswordPolicyRel]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordPolicyRel](
	[mvccVersion] [bigint] NOT NULL,
	[passwordPolicyRelId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[passwordPolicyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[passwordPolicyRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasswordTracker]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordTracker](
	[mvccVersion] [bigint] NOT NULL,
	[passwordTrackerId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[password_] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[passwordTrackerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[phoneId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[number_] [nvarchar](75) NULL,
	[extension] [nvarchar](75) NULL,
	[typeId] [bigint] NULL,
	[primary_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[phoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PluginSetting]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PluginSetting](
	[mvccVersion] [bigint] NOT NULL,
	[pluginSettingId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[pluginId] [nvarchar](75) NULL,
	[pluginType] [nvarchar](75) NULL,
	[roles] [nvarchar](4000) NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[pluginSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollsChoice]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollsChoice](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[choiceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[questionId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[choiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollsQuestion]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollsQuestion](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[questionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[lastVoteDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[questionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollsVote]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollsVote](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[voteId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[questionId] [bigint] NULL,
	[choiceId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[voteDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[voteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PORT_USAGE_LOG]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PORT_USAGE_LOG](
	[ID] [varchar](255) NOT NULL,
	[HOURLY] [tinyint] NULL,
	[MAX_PORT_USED] [int] NULL,
	[MODIFY_DATE] [datetime] NULL,
	[ORG_ID] [numeric](19, 0) NULL,
	[IS_PARENT] [tinyint] NULL,
	[START_TIME] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PortalPreferences]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortalPreferences](
	[mvccVersion] [bigint] NOT NULL,
	[portalPreferencesId] [bigint] NOT NULL,
	[ownerId] [bigint] NULL,
	[ownerType] [int] NULL,
	[preferences] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[portalPreferencesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Portlet]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portlet](
	[mvccVersion] [bigint] NOT NULL,
	[id_] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[portletId] [nvarchar](200) NULL,
	[roles] [nvarchar](4000) NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PortletItem]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortletItem](
	[mvccVersion] [bigint] NOT NULL,
	[portletItemId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[portletId] [nvarchar](200) NULL,
	[classNameId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[portletItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PortletPreferences]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortletPreferences](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[portletPreferencesId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[ownerId] [bigint] NULL,
	[ownerType] [int] NULL,
	[plid] [bigint] NULL,
	[portletId] [nvarchar](200) NULL,
	[preferences] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[portletPreferencesId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QOS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QOS](
	[ID] [varchar](255) NOT NULL,
	[CREATE_DATE] [datetime] NULL,
	[JITTER] [numeric](19, 0) NULL,
	[LOC_CUM_LOST] [numeric](19, 0) NULL,
	[LOC_SEQ_NUM] [numeric](19, 0) NULL,
	[LOC_TIME_STAMP] [numeric](19, 0) NULL,
	[LOC_TX_OCT] [numeric](19, 0) NULL,
	[LOC_TX_PKTS] [numeric](19, 0) NULL,
	[REM_CUM_LOST] [numeric](19, 0) NULL,
	[REM_SEQ_NUM] [numeric](19, 0) NULL,
	[REM_TIME_STAMP] [numeric](19, 0) NULL,
	[rem_tx_oct] [numeric](19, 0) NULL,
	[REM_TX_PKTS] [numeric](19, 0) NULL,
	[TEST_CASE_RUN_RESULT_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_BLOB_TRIGGERS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_BLOB_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[BLOB_DATA] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_CALENDARS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_CALENDARS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[CALENDAR_NAME] [nvarchar](200) NOT NULL,
	[CALENDAR] [image] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[CALENDAR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_CRON_TRIGGERS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_CRON_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[CRON_EXPRESSION] [nvarchar](200) NOT NULL,
	[TIME_ZONE_ID] [nvarchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_FIRED_TRIGGERS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_FIRED_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[ENTRY_ID] [nvarchar](95) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[FIRED_TIME] [bigint] NOT NULL,
	[PRIORITY] [int] NOT NULL,
	[STATE] [nvarchar](16) NOT NULL,
	[JOB_NAME] [nvarchar](200) NULL,
	[JOB_GROUP] [nvarchar](200) NULL,
	[IS_NONCONCURRENT] [bit] NULL,
	[REQUESTS_RECOVERY] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[ENTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_JOB_DETAILS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_JOB_DETAILS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[JOB_NAME] [nvarchar](200) NOT NULL,
	[JOB_GROUP] [nvarchar](200) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[JOB_CLASS_NAME] [nvarchar](250) NOT NULL,
	[IS_DURABLE] [bit] NOT NULL,
	[IS_NONCONCURRENT] [bit] NOT NULL,
	[IS_UPDATE_DATA] [bit] NOT NULL,
	[REQUESTS_RECOVERY] [bit] NOT NULL,
	[JOB_DATA] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[JOB_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_LOCKS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_LOCKS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[LOCK_NAME] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[LOCK_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_PAUSED_TRIGGER_GRPS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_PAUSED_TRIGGER_GRPS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_SCHEDULER_STATE]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_SCHEDULER_STATE](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[LAST_CHECKIN_TIME] [bigint] NOT NULL,
	[CHECKIN_INTERVAL] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[INSTANCE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_SIMPLE_TRIGGERS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_SIMPLE_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[REPEAT_COUNT] [bigint] NOT NULL,
	[REPEAT_INTERVAL] [bigint] NOT NULL,
	[TIMES_TRIGGERED] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_SIMPROP_TRIGGERS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_SIMPROP_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[STR_PROP_1] [nvarchar](512) NULL,
	[STR_PROP_2] [nvarchar](512) NULL,
	[STR_PROP_3] [nvarchar](512) NULL,
	[INT_PROP_1] [int] NULL,
	[INT_PROP_2] [int] NULL,
	[LONG_PROP_1] [bigint] NULL,
	[LONG_PROP_2] [bigint] NULL,
	[DEC_PROP_1] [numeric](13, 4) NULL,
	[DEC_PROP_2] [numeric](13, 4) NULL,
	[BOOL_PROP_1] [bit] NULL,
	[BOOL_PROP_2] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUARTZ_TRIGGERS]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTZ_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](200) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](200) NOT NULL,
	[JOB_NAME] [nvarchar](200) NOT NULL,
	[JOB_GROUP] [nvarchar](200) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[NEXT_FIRE_TIME] [bigint] NULL,
	[PREV_FIRE_TIME] [bigint] NULL,
	[PRIORITY] [int] NULL,
	[TRIGGER_STATE] [nvarchar](16) NOT NULL,
	[TRIGGER_TYPE] [nvarchar](8) NOT NULL,
	[START_TIME] [bigint] NOT NULL,
	[END_TIME] [bigint] NULL,
	[CALENDAR_NAME] [nvarchar](200) NULL,
	[MISFIRE_INSTR] [int] NULL,
	[JOB_DATA] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingsEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingsEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[entryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[score] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[entryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingsStats]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingsStats](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[statsId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[totalEntries] [int] NULL,
	[totalScore] [float] NULL,
	[averageScore] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[statsId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReadingTimeEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReadingTimeEntry](
	[uuid_] [nvarchar](75) NULL,
	[readingTimeEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[readingTime] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[readingTimeEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecentLayoutBranch]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentLayoutBranch](
	[mvccVersion] [bigint] NOT NULL,
	[recentLayoutBranchId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[layoutBranchId] [bigint] NULL,
	[layoutSetBranchId] [bigint] NULL,
	[plid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[recentLayoutBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecentLayoutRevision]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentLayoutRevision](
	[mvccVersion] [bigint] NOT NULL,
	[recentLayoutRevisionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[layoutRevisionId] [bigint] NULL,
	[layoutSetBranchId] [bigint] NULL,
	[plid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[recentLayoutRevisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecentLayoutSetBranch]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentLayoutSetBranch](
	[mvccVersion] [bigint] NOT NULL,
	[recentLayoutSetBranchId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[layoutSetBranchId] [bigint] NULL,
	[layoutSetId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[recentLayoutSetBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RedirectEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RedirectEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[redirectEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[destinationURL] [nvarchar](4000) NULL,
	[expirationDate] [datetime2](6) NULL,
	[lastOccurrenceDate] [datetime2](6) NULL,
	[permanent_] [bit] NULL,
	[sourceURL] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[redirectEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RedirectNotFoundEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RedirectNotFoundEntry](
	[mvccVersion] [bigint] NOT NULL,
	[redirectNotFoundEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[ignored] [bit] NULL,
	[url] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[redirectNotFoundEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[mvccVersion] [bigint] NOT NULL,
	[regionId] [bigint] NOT NULL,
	[countryId] [bigint] NULL,
	[regionCode] [nvarchar](75) NULL,
	[name] [nvarchar](75) NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[regionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Release_]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release_](
	[mvccVersion] [bigint] NOT NULL,
	[releaseId] [bigint] NOT NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[servletContextName] [nvarchar](75) NULL,
	[schemaVersion] [nvarchar](75) NULL,
	[buildNumber] [int] NULL,
	[buildDate] [datetime2](6) NULL,
	[verified] [bit] NULL,
	[state_] [int] NULL,
	[testString] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[releaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemoteAppEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemoteAppEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[remoteAppEntryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](4000) NULL,
	[url] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[remoteAppEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT_SCHEDULE]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT_SCHEDULE](
	[uuid_] [nvarchar](75) NULL,
	[id_] [bigint] NOT NULL,
	[name] [nvarchar](75) NULL,
	[active_] [bit] NULL,
	[campaign] [nvarchar](75) NULL,
	[runStartDate] [datetime2](6) NULL,
	[runEndDate] [datetime2](6) NULL,
	[nextRunDate] [datetime2](6) NULL,
	[repeatType] [int] NULL,
	[sun] [bit] NULL,
	[mon] [bit] NULL,
	[tue] [bit] NULL,
	[wed] [bit] NULL,
	[thu] [bit] NULL,
	[fri] [bit] NULL,
	[sat] [bit] NULL,
	[days] [nvarchar](75) NULL,
	[time_] [nvarchar](max) NULL,
	[format] [nvarchar](75) NULL,
	[emails] [nvarchar](4000) NULL,
	[status] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[groupId] [bigint] NULL,
	[lrOrgId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repository]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repository](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[repositoryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](4000) NULL,
	[portletId] [nvarchar](200) NULL,
	[typeSettings] [nvarchar](max) NULL,
	[dlFolderId] [bigint] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[repositoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepositoryEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepositoryEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[repositoryEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[repositoryId] [bigint] NULL,
	[mappedId] [nvarchar](255) NULL,
	[manualCheckInRequired] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[repositoryEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourceAction]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceAction](
	[mvccVersion] [bigint] NOT NULL,
	[resourceActionId] [bigint] NOT NULL,
	[name] [nvarchar](255) NULL,
	[actionId] [nvarchar](75) NULL,
	[bitwiseValue] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[resourceActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourcePermission]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourcePermission](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[resourcePermissionId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[name] [nvarchar](255) NULL,
	[scope] [int] NULL,
	[primKey] [nvarchar](255) NULL,
	[primKeyId] [bigint] NULL,
	[roleId] [bigint] NULL,
	[ownerId] [bigint] NULL,
	[actionIds] [bigint] NULL,
	[viewActionId] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[resourcePermissionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[roleId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[title] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[type_] [int] NULL,
	[subtype] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAPEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAPEntry](
	[uuid_] [nvarchar](75) NULL,
	[sapEntryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[allowedServiceSignatures] [nvarchar](4000) NULL,
	[defaultSAPEntry] [bit] NULL,
	[enabled] [bit] NULL,
	[name] [nvarchar](75) NULL,
	[title] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[sapEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SCHEDULE_ELEMENT]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCHEDULE_ELEMENT](
	[ID] [varchar](255) NOT NULL,
	[DAY_OF_WEEK] [int] NULL,
	[IS_DELETED] [tinyint] NULL,
	[FROM_HOUR] [int] NULL,
	[FROM_MINUTE] [int] NULL,
	[TILL_HOUR] [int] NULL,
	[TILL_MINUTE] [int] NULL,
	[OFF_SET] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentsEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentsEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[segmentsEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[segmentsEntryKey] [nvarchar](75) NULL,
	[name] [nvarchar](4000) NULL,
	[description] [nvarchar](4000) NULL,
	[active_] [bit] NULL,
	[criteria] [nvarchar](max) NULL,
	[source] [nvarchar](75) NULL,
	[type_] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[segmentsEntryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentsEntryRel]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentsEntryRel](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[segmentsEntryRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[segmentsEntryId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[segmentsEntryRelId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentsEntryRole]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentsEntryRole](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[segmentsEntryRoleId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[segmentsEntryId] [bigint] NULL,
	[roleId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[segmentsEntryRoleId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentsExperience]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentsExperience](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[segmentsExperienceId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[segmentsEntryId] [bigint] NULL,
	[segmentsExperienceKey] [nvarchar](75) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[name] [nvarchar](4000) NULL,
	[priority] [int] NULL,
	[active_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[segmentsExperienceId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentsExperiment]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentsExperiment](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[segmentsExperimentId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[segmentsEntryId] [bigint] NULL,
	[segmentsExperienceId] [bigint] NULL,
	[segmentsExperimentKey] [nvarchar](75) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[typeSettings] [nvarchar](max) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[segmentsExperimentId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentsExperimentRel]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentsExperimentRel](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[segmentsExperimentRelId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[segmentsExperimentId] [bigint] NULL,
	[segmentsExperienceId] [bigint] NULL,
	[split] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[segmentsExperimentRelId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceComponent]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceComponent](
	[mvccVersion] [bigint] NOT NULL,
	[serviceComponentId] [bigint] NOT NULL,
	[buildNamespace] [nvarchar](75) NULL,
	[buildNumber] [bigint] NULL,
	[buildDate] [bigint] NULL,
	[data_] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[serviceComponentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SharingEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SharingEntry](
	[uuid_] [nvarchar](75) NULL,
	[sharingEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[toUserId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[shareable] [bit] NULL,
	[actionIds] [bigint] NULL,
	[expirationDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[sharingEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteFriendlyURL]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteFriendlyURL](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[siteFriendlyURLId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[groupId] [bigint] NULL,
	[friendlyURL] [nvarchar](75) NULL,
	[languageId] [nvarchar](75) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[siteFriendlyURLId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteNavigationMenu]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteNavigationMenu](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[siteNavigationMenuId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[auto_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[siteNavigationMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteNavigationMenuItem]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteNavigationMenuItem](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[siteNavigationMenuItemId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[siteNavigationMenuId] [bigint] NULL,
	[parentSiteNavigationMenuItemId] [bigint] NULL,
	[name] [nvarchar](255) NULL,
	[type_] [nvarchar](75) NULL,
	[typeSettings] [nvarchar](max) NULL,
	[order_] [int] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[siteNavigationMenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialActivity]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialActivity](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[activityId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [bigint] NULL,
	[activitySetId] [bigint] NULL,
	[mirrorActivityId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[parentClassNameId] [bigint] NULL,
	[parentClassPK] [bigint] NULL,
	[type_] [int] NULL,
	[extraData] [nvarchar](4000) NULL,
	[receiverUserId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[activityId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialActivityAchievement]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialActivityAchievement](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[activityAchievementId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[firstInGroup] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[activityAchievementId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialActivityCounter]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialActivityCounter](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[activityCounterId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[ownerType] [int] NULL,
	[currentValue] [int] NULL,
	[totalValue] [int] NULL,
	[graceValue] [int] NULL,
	[startPeriod] [int] NULL,
	[endPeriod] [int] NULL,
	[active_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[activityCounterId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialActivityLimit]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialActivityLimit](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[activityLimitId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[activityType] [int] NULL,
	[activityCounterName] [nvarchar](75) NULL,
	[value] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[activityLimitId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialActivitySet]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialActivitySet](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[activitySetId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [bigint] NULL,
	[modifiedDate] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[type_] [int] NULL,
	[extraData] [nvarchar](4000) NULL,
	[activityCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[activitySetId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialActivitySetting]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialActivitySetting](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[activitySettingId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[activityType] [int] NULL,
	[name] [nvarchar](75) NULL,
	[value] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[activitySettingId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialRelation]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialRelation](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[relationId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[createDate] [bigint] NULL,
	[userId1] [bigint] NULL,
	[userId2] [bigint] NULL,
	[type_] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[relationId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialRequest]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialRequest](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[requestId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[createDate] [bigint] NULL,
	[modifiedDate] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[type_] [int] NULL,
	[extraData] [nvarchar](4000) NULL,
	[receiverUserId] [bigint] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[requestId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StyleBookEntry]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StyleBookEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[headId] [bigint] NULL,
	[head] [bit] NULL,
	[styleBookEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[defaultStyleBookEntry] [bit] NULL,
	[frontendTokensValues] [nvarchar](max) NULL,
	[name] [nvarchar](75) NULL,
	[previewFileEntryId] [bigint] NULL,
	[styleBookEntryKey] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[styleBookEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StyleBookEntryVersion]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StyleBookEntryVersion](
	[styleBookEntryVersionId] [bigint] NOT NULL,
	[version] [int] NULL,
	[uuid_] [nvarchar](75) NULL,
	[styleBookEntryId] [bigint] NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[defaultStyleBookEntry] [bit] NULL,
	[frontendTokensValues] [nvarchar](max) NULL,
	[name] [nvarchar](75) NULL,
	[previewFileEntryId] [bigint] NULL,
	[styleBookEntryKey] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[styleBookEntryVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[subscriptionId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[frequency] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[subscriptionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemEvent]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemEvent](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[systemEventId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[classUuid] [nvarchar](75) NULL,
	[referrerClassNameId] [bigint] NULL,
	[parentSystemEventId] [bigint] NULL,
	[systemEventSetKey] [bigint] NULL,
	[type_] [int] NULL,
	[extraData] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[systemEventId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCOMPANY]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCOMPANY](
	[ID] [varchar](255) NOT NULL,
	[IS_DELETED] [tinyint] NULL,
	[EMAIL] [varchar](255) NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[NAME] [varchar](255) NULL,
	[LR_ORG_IDS] [varchar](255) NULL,
	[LR_USER_ID] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 15-12-2021 13:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[teamId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[groupId] [bigint] NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[teamId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_CASE]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_CASE](
	[ID] [varchar](255) NOT NULL,
	[ALERT_REPEAT_TYPE] [varchar](255) NULL,
	[ASR_PARAMS] [varchar](1536) NULL,
	[AUTO_DISCONNECT] [bit] NOT NULL,
	[AGENT_VERIFICATION_PARAMS] [varchar](1536) NULL,
	[BYPASS_STEPS_WITHOUT_DTMF] [tinyint] NULL,
	[CALL_RECORDING_TYPE] [varchar](255) NULL,
	[CALLBACK_INBOUND_TC_ID] [varchar](255) NULL,
	[CALLED_NUMBER] [varchar](255) NULL,
	[CALLING_RANGE_END] [varchar](20) NULL,
	[CALLING_RANGE_START] [varchar](20) NULL,
	[COMPANY_ID] [numeric](19, 0) NULL,
	[CONFERENCE_NUMBER] [varchar](255) NULL,
	[CREATE_DATE] [datetime] NULL,
	[DATA_DRIVEN_ENABLED] [tinyint] NULL,
	[DATA_DRIVEN_FILE_NAME] [varchar](255) NULL,
	[DATA_DRIVEN_FILE_PATH_NAME] [varchar](255) NULL,
	[DATA_DRIVEN_TYPE] [varchar](255) NULL,
	[IS_DELETED] [tinyint] NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[DISCOVER_IVR_ID] [numeric](19, 0) NULL,
	[DISCOVER_IVR_LOCALE] [varchar](255) NULL,
	[DISCOVER_IVR_RECORDED_FILE] [varchar](255) NULL,
	[DTMF_MODE_TYPE] [varchar](255) NULL,
	[GENERATED_BY_IVR] [tinyint] NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[IGNORE_FAR_END_DISCONNECT] [bit] NULL,
	[IVR_TASK_ID] [numeric](19, 0) NULL,
	[JSON_ID] [varchar](255) NULL,
	[MAJOR_THRESHOLD_CRITICAL_COUNT] [int] NULL,
	[MINOR_THRESHOLD_CRITICAL_COUNT] [int] NULL,
	[MOS_ENABLED] [tinyint] NULL,
	[MOS_THRESHOLD] [varchar](255) NULL,
	[NAME] [varchar](500) NULL,
	[NOTES] [varchar](255) NULL,
	[ORDER_NUMBER] [int] NULL,
	[LR_ORG_ID] [numeric](19, 0) NULL,
	[OUTBOUND_CALLED_NUMBER] [varchar](255) NULL,
	[OUTBOUND_ENABLED] [tinyint] NULL,
	[OUTBOUND_TIMEOUT] [int] NULL,
	[PLAN_TYPE] [varchar](255) NULL,
	[PROXY_ENABLED] [tinyint] NULL,
	[PROXY_PASSWORD] [varchar](255) NULL,
	[PROXY_PORT] [varchar](255) NULL,
	[PROXY_SERVER] [varchar](255) NULL,
	[PROXY_USERNAME] [varchar](255) NULL,
	[IS_PUBLISHED] [tinyint] NULL,
	[RUN_VOICE_TEST_ID] [varchar](255) NULL,
	[testCaseModeType] [varchar](255) NULL,
	[testCaseType] [varchar](255) NULL,
	[TIMEOUT] [int] NOT NULL,
	[URL] [varchar](255) NULL,
	[LR_USER_ID] [numeric](19, 0) NULL,
	[FOLDER_ID] [varchar](255) NULL,
	[GIT_SYNCED] [tinyint] NULL,
	[TESTCASE_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_CASE_EMAIL_ALERT_LEVEL]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_CASE_EMAIL_ALERT_LEVEL](
	[TEST_CASE_ID] [varchar](255) NOT NULL,
	[emailAlertLevels_ID] [varchar](255) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[emailAlertLevels_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_CASE_MAKE_A_CALL_RETRY]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_CASE_MAKE_A_CALL_RETRY](
	[TEST_CASE_ID] [varchar](255) NOT NULL,
	[makeACallRetry_ID] [varchar](255) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[makeACallRetry_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_CASE_RUN_RESULT]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_CASE_RUN_RESULT](
	[ID] [varchar](255) NOT NULL,
	[EMAILS] [varchar](1536) NULL,
	[TEST_CASE_ALERT_MESSAGE] [varchar](2048) NULL,
	[ALERT_TRIGGER_STATUS] [tinyint] NULL,
	[AGENT_VERIFICATION_PARAMS] [varchar](1536) NULL,
	[TEST_CASE_CALLED_NUMBER] [varchar](255) NULL,
	[CALLEE_WEB_TC_RUN_RESULT_ID] [varchar](255) NULL,
	[CLI] [varchar](255) NULL,
	[IS_COMPLETE] [tinyint] NULL,
	[CONFIGURED_AV_PARAMS] [varchar](1536) NULL,
	[DDI] [varchar](255) NULL,
	[TEST_CASE_DESCRIPTION] [varchar](255) NULL,
	[DESTINATION_GUSID] [varchar](255) NULL,
	[END_TIME] [datetime] NULL,
	[GUSID] [varchar](255) NULL,
	[MESSAGE] [varchar](255) NULL,
	[MOS] [varchar](20) NULL,
	[TEST_CASE_NAME] [varchar](255) NULL,
	[TEST_CASE_NOTES] [varchar](255) NULL,
	[ORG_ID] [numeric](19, 0) NULL,
	[PESQ] [varchar](20) NULL,
	[TEST_CASE_PLAN_TYPE] [varchar](255) NULL,
	[PROXY_ENABLED] [tinyint] NULL,
	[PROXY_PASSWORD] [varchar](255) NULL,
	[PROXY_PORT] [varchar](255) NULL,
	[PROXY_SERVER] [varchar](255) NULL,
	[PROXY_USERNAME] [varchar](255) NULL,
	[QOS_DATA_SYNC] [tinyint] NULL,
	[IS_RECORDING_FILE_ARCHIVED] [tinyint] NULL,
	[RECORDING_FILE_NAME] [varchar](255) NULL,
	[RESPONSIVE] [tinyint] NULL,
	[RESULT_TYPE] [varchar](255) NULL,
	[RESULT_MESSAGE] [varchar](255) NULL,
	[RUN_VOICE_TEST_ID] [varchar](255) NULL,
	[START_TIME] [datetime] NULL,
	[successResults] [int] NOT NULL,
	[TEST_CASE_ID] [varchar](255) NULL,
	[testCaseModeType] [varchar](255) NULL,
	[testCaseType] [varchar](255) NULL,
	[TEST_SUITE_ID] [varchar](255) NULL,
	[TEST_SUITE_RUN_RESULT_ID] [varchar](255) NULL,
	[URL] [varchar](255) NULL,
	[TEST_CASE_FOLDER_ID] [varchar](255) NULL,
	[ATTEMPT_COUNT] [int] NULL,
	[ATTEMPT_ID] [varchar](255) NULL,
	[OLD_RUN] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_CASE_TEST_STEP]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_CASE_TEST_STEP](
	[TEST_CASE_ID] [varchar](255) NOT NULL,
	[testSteps_ID] [varchar](255) NULL,
UNIQUE NONCLUSTERED 
(
	[testSteps_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_MODULE]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_MODULE](
	[ID] [varchar](255) NOT NULL,
	[COMPANY_ID] [numeric](19, 0) NULL,
	[CREATE_DATE] [datetime] NULL,
	[IS_DELETED] [tinyint] NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[NAME] [varchar](255) NULL,
	[LR_ORG_ID] [numeric](19, 0) NULL,
	[PLAN_TYPE] [varchar](255) NULL,
	[testModuleModeType] [varchar](255) NULL,
	[testModuleType] [varchar](255) NULL,
	[LR_USER_ID] [numeric](19, 0) NULL,
	[FOLDER_ID] [varchar](255) NULL,
	[GIT_SYNCED] [tinyint] NULL,
	[TESTMODULE_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_MODULE_TEST_STEP]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_MODULE_TEST_STEP](
	[TEST_MODULE_ID] [varchar](255) NOT NULL,
	[testSteps_ID] [varchar](255) NULL,
UNIQUE NONCLUSTERED 
(
	[testSteps_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_STEP]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_STEP](
	[ID] [varchar](255) NOT NULL,
	[ACTION] [varchar](255) NULL,
	[IS_BARGIN] [tinyint] NULL,
	[CONTROL_LOCATOR] [varchar](255) NULL,
	[CONTROL_TEXT] [varchar](255) NULL,
	[IS_DELETED] [tinyint] NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[DISCOVER_IVR_RECORDED_FILE] [varchar](255) NULL,
	[EXPECTED_EXCHANGE_TYPE] [varchar](255) NULL,
	[EXPECTED_TEXT] [varchar](2048) NULL,
	[EXPECTED_TEXT_LOCALE] [varchar](255) NULL,
	[FETCHED_DATA] [varchar](255) NULL,
	[JSON_ID] [varchar](255) NULL,
	[JSON_PARENT_ID] [varchar](255) NULL,
	[LAST_MODIFIED_BY_LR_USER_ID] [numeric](19, 0) NULL,
	[LAST_MODIFIED_TS] [datetime] NULL,
	[LINKED_GROUP_ID] [varchar](255) NULL,
	[LINKED_TEST_MODULE] [varchar](255) NULL,
	[LINKED_TEST_STEP] [varchar](255) NULL,
	[MAJOR_THRESHOLD_COUNT_TIME] [int] NULL,
	[MAX_PAUSE_TIME] [int] NULL,
	[MIN_CONFIDENCE_LEVEL] [int] NULL,
	[MIN_PAUSE_TIME] [int] NULL,
	[MINOR_THRESHOLD_COUNT_TIME] [int] NULL,
	[MOS_ENABLED] [tinyint] NULL,
	[MOS_FILE_NAME] [varchar](255) NULL,
	[MOS_FILE_URL] [varchar](255) NULL,
	[MOS_THRESHOLD_START] [varchar](255) NULL,
	[NAME] [varchar](255) NULL,
	[ASR_PARAMS] [varchar](1536) NULL,
	[POST_SPEECH_SILENCE_TIMEOUT] [int] NULL,
	[IS_RECORD_CALL] [tinyint] NULL,
	[REPLY_EXCHANGE_TYPE] [varchar](255) NULL,
	[REPLY_TEXT] [varchar](255) NULL,
	[REPLY_TEXT_LOCALE] [varchar](255) NULL,
	[replyType] [varchar](255) NULL,
	[RESPONSE_TIME] [int] NULL,
	[SPECIAL] [varchar](255) NULL,
	[STEP_NUMBER] [int] NULL,
	[USER_VERIFIED] [tinyint] NULL,
	[VOICE_FILE_Name] [varchar](255) NULL,
	[VOICE_FILE_URL] [varchar](255) NULL,
	[SOURCE_MODULE_FOLDER_PATH] [varchar](255) NULL,
	[SOURCE_MODULE_NAME] [varchar](255) NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_STEP_MEDIA_FILE]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_STEP_MEDIA_FILE](
	[ID] [varchar](255) NOT NULL,
	[IS_DELETED] [tinyint] NULL,
	[MEDIA_FILE] [image] NULL,
	[TEST_STEP_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_STEP_PHRASE_REPLY]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_STEP_PHRASE_REPLY](
	[ID] [varchar](255) NOT NULL,
	[IS_DELETED] [tinyint] NULL,
	[PHRASE] [varchar](255) NULL,
	[REPLY_TEXT] [varchar](255) NULL,
	[REPLY_TEXT_LOCALE] [varchar](255) NULL,
	[replyType] [varchar](255) NULL,
	[TEST_STEP_ID] [varchar](255) NULL,
	[VOICE_FILE_Name] [varchar](255) NULL,
	[VOICE_FILE_URL] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_STEP_RUN_RESULT]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_STEP_RUN_RESULT](
	[ID] [varchar](255) NOT NULL,
	[ACTION] [varchar](255) NULL,
	[BARGEIN_TIME] [int] NOT NULL,
	[CONFIDENCE_LEVEL] [float] NOT NULL,
	[CONTROL_LOCATOR] [varchar](255) NULL,
	[CONTROL_TEXT] [varchar](255) NULL,
	[END_TIME] [datetime] NULL,
	[FETCHED_DATA] [varchar](255) NULL,
	[MESSAGE] [text] NULL,
	[MINIMUM_CONFIDENCE_LEVEL] [float] NOT NULL,
	[MOS] [varchar](255) NULL,
	[MOS_EXPEC_FILE] [varchar](255) NULL,
	[MOS_THRESHOLD] [varchar](255) NULL,
	[IS_RECORDING_FILE_ARCHIVED] [tinyint] NULL,
	[RECORDING_FILE_NAME] [varchar](255) NULL,
	[replyType] [varchar](255) NULL,
	[RESPONSE_TIME] [numeric](19, 0) NULL,
	[RESULT_TYPE] [varchar](255) NULL,
	[START_TIME] [datetime] NULL,
	[STEP_NAME] [varchar](255) NULL,
	[STEP_NUMBER] [int] NULL,
	[TEST_CASE_ID] [varchar](255) NULL,
	[TEST_CASE_RUN_RESULT_ID] [varchar](255) NULL,
	[TEST_STEP_DESCRIPTION] [varchar](255) NULL,
	[TEST_STEP_ID] [varchar](255) NULL,
	[TEST_STEP_REPLY_TEXT] [varchar](255) NULL,
	[TEST_SUITE_ID] [varchar](255) NULL,
	[TEST_SUITE_RUN_RESULT_ID] [varchar](255) NULL,
	[UTTERANCE] [varchar](2048) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_SUITE]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_SUITE](
	[ID] [varchar](255) NOT NULL,
	[ACTIVE] [tinyint] NULL,
	[CALLED_NUMBER] [varchar](255) NULL,
	[CALLED_NUMBER_ENABLE] [tinyint] NULL,
	[CAMPAIGN_TYPE] [varchar](255) NULL,
	[CLI_ENABLE] [tinyint] NULL,
	[CLI_FIXED] [tinyint] NULL,
	[CLI_RANGE_MAX] [numeric](19, 0) NULL,
	[CLI_RANGE_MIN] [numeric](19, 0) NULL,
	[COMPANY_ID] [numeric](19, 0) NULL,
	[CONCURRENT_PORTS] [int] NULL,
	[CREATE_DATE] [datetime] NULL,
	[SUITE_CREATE_USER_ID] [numeric](19, 0) NULL,
	[CURRENT_STATUS] [varchar](255) NULL,
	[DAILY_RUN] [tinyint] NULL,
	[IS_DELETED] [tinyint] NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[DIRECT_TESTCASE_ID] [varchar](255) NULL,
	[END_DATE] [datetime] NULL,
	[EXCLUSION_DATES] [varchar](255) NULL,
	[FREQUENCY] [int] NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[LAST_RUN] [datetime] NULL,
	[MAX_CAPS] [int] NULL,
	[NAME] [varchar](255) NULL,
	[LR_ORG_ID] [numeric](19, 0) NULL,
	[PLAN_TYPE] [varchar](255) NULL,
	[RAMP_UP_TIME] [float] NULL,
	[RECORDING_PERCENTAGE] [float] NOT NULL,
	[RUN_DATE] [datetime] NULL,
	[RUN_FOR] [int] NULL,
	[RUN_FOR_TYPE] [varchar](255) NULL,
	[SCHEDULE] [tinyint] NULL,
	[SCHEDULED_DATE] [datetime] NULL,
	[TEST_CASE_DISTR_PROFILE] [varchar](255) NULL,
	[TROPO_APP_URLS] [varchar](4000) NULL,
	[LR_USER_ID] [numeric](19, 0) NULL,
	[AX_CAMPAIGN_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_SUITE_RUN_PLAN]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_SUITE_RUN_PLAN](
	[ID] [varchar](255) NOT NULL,
	[PLAN_ACTIVE] [tinyint] NULL,
	[LAST_RUN_TEST_CASE_ID] [varchar](255) NULL,
	[START_TIME] [datetime] NULL,
	[TEST_SUITE_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_SUITE_RUN_RESULT]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_SUITE_RUN_RESULT](
	[ID] [varchar](255) NOT NULL,
	[callDuration] [varchar](255) NULL,
	[COMPANY_ID] [numeric](19, 0) NULL,
	[CONCURRENT_PORTS] [int] NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[END_DATE] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[endTimeForFilterOption] [datetime] NULL,
	[FREQUENCY] [int] NULL,
	[LR_GROUP_ID] [numeric](19, 0) NULL,
	[MAX_CAPS] [int] NULL,
	[NAME] [varchar](255) NULL,
	[LR_ORG_ID] [numeric](19, 0) NULL,
	[PLAN_TYPE] [varchar](255) NULL,
	[RAMP_UP_TIME] [float] NULL,
	[RUN_DATE] [datetime] NULL,
	[RUN_FOR] [int] NULL,
	[RUN_FOR_TYPE] [varchar](255) NULL,
	[RUN_STATUS] [varchar](255) NULL,
	[SCHEDULED_DATE] [datetime] NULL,
	[START_TIME] [datetime] NULL,
	[startTimeForFilterOption] [datetime] NULL,
	[TEST_SUITE_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_SUITE_RUNNING]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_SUITE_RUNNING](
	[ID] [varchar](255) NOT NULL,
	[GROUP_ID] [numeric](19, 0) NULL,
	[START_TIME] [datetime] NULL,
	[TEST_SUITE_ID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_SUITE_SCHEDULE_ELEMENT]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_SUITE_SCHEDULE_ELEMENT](
	[TEST_SUITE_ID] [varchar](255) NOT NULL,
	[SCHEDULE_ELEMENT_ID] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_SUITE_TEST_CASE]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_SUITE_TEST_CASE](
	[TEST_SUITE_ID] [varchar](255) NOT NULL,
	[TEST_CASE_ID] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[mvccVersion] [bigint] NOT NULL,
	[ticketId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[key_] [nvarchar](75) NULL,
	[type_] [int] NULL,
	[extraInfo] [nvarchar](max) NULL,
	[expirationDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[ticketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TranslationEntry]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TranslationEntry](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[translationEntryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[content] [nvarchar](max) NULL,
	[contentType] [nvarchar](75) NULL,
	[languageId] [nvarchar](75) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[translationEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrashEntry]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrashEntry](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[entryId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[systemEventSetKey] [bigint] NULL,
	[typeSettings] [nvarchar](max) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[entryId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrashVersion]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrashVersion](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[versionId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[entryId] [bigint] NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[typeSettings] [nvarchar](max) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[versionId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[userId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[defaultUser] [bit] NULL,
	[contactId] [bigint] NULL,
	[password_] [nvarchar](75) NULL,
	[passwordEncrypted] [bit] NULL,
	[passwordReset] [bit] NULL,
	[passwordModifiedDate] [datetime2](6) NULL,
	[digest] [nvarchar](255) NULL,
	[reminderQueryQuestion] [nvarchar](75) NULL,
	[reminderQueryAnswer] [nvarchar](75) NULL,
	[graceLoginCount] [int] NULL,
	[screenName] [nvarchar](75) NULL,
	[emailAddress] [nvarchar](254) NULL,
	[facebookId] [bigint] NULL,
	[googleUserId] [nvarchar](75) NULL,
	[ldapServerId] [bigint] NULL,
	[openId] [nvarchar](1024) NULL,
	[portraitId] [bigint] NULL,
	[languageId] [nvarchar](75) NULL,
	[timeZoneId] [nvarchar](75) NULL,
	[greeting] [nvarchar](255) NULL,
	[comments] [nvarchar](4000) NULL,
	[firstName] [nvarchar](75) NULL,
	[middleName] [nvarchar](75) NULL,
	[lastName] [nvarchar](75) NULL,
	[jobTitle] [nvarchar](100) NULL,
	[loginDate] [datetime2](6) NULL,
	[loginIP] [nvarchar](75) NULL,
	[lastLoginDate] [datetime2](6) NULL,
	[lastLoginIP] [nvarchar](75) NULL,
	[lastFailedLoginDate] [datetime2](6) NULL,
	[failedLoginAttempts] [int] NULL,
	[lockout] [bit] NULL,
	[lockoutDate] [datetime2](6) NULL,
	[agreedToTermsOfUse] [bit] NULL,
	[emailAddressVerified] [bit] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[externalReferenceCode] [nvarchar](75) NULL,
	[userGroupId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[parentUserGroupId] [bigint] NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](4000) NULL,
	[addedByLDAPImport] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroupGroupRole]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroupGroupRole](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[userGroupGroupRoleId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userGroupId] [bigint] NULL,
	[groupId] [bigint] NULL,
	[roleId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[userGroupGroupRoleId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroupRole]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroupRole](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[userGroupRoleId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[groupId] [bigint] NULL,
	[roleId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[userGroupRoleId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups_Teams]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups_Teams](
	[companyId] [bigint] NOT NULL,
	[teamId] [bigint] NOT NULL,
	[userGroupId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[teamId] ASC,
	[userGroupId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserIdMapper]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserIdMapper](
	[mvccVersion] [bigint] NOT NULL,
	[userIdMapperId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[type_] [nvarchar](75) NULL,
	[description] [nvarchar](75) NULL,
	[externalUserId] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[userIdMapperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNotificationDelivery]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotificationDelivery](
	[mvccVersion] [bigint] NOT NULL,
	[userNotificationDeliveryId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[portletId] [nvarchar](200) NULL,
	[classNameId] [bigint] NULL,
	[notificationType] [int] NULL,
	[deliveryType] [int] NULL,
	[deliver] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userNotificationDeliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNotificationEvent]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotificationEvent](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[userNotificationEventId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[type_] [nvarchar](200) NULL,
	[timestamp] [bigint] NULL,
	[deliveryType] [int] NULL,
	[deliverBy] [bigint] NULL,
	[delivered] [bit] NULL,
	[payload] [nvarchar](max) NULL,
	[actionRequired] [bit] NULL,
	[archived] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userNotificationEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Groups]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Groups](
	[companyId] [bigint] NOT NULL,
	[groupId] [bigint] NOT NULL,
	[userId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupId] ASC,
	[userId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Orgs]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Orgs](
	[companyId] [bigint] NOT NULL,
	[organizationId] [bigint] NOT NULL,
	[userId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[organizationId] ASC,
	[userId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Roles]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Roles](
	[companyId] [bigint] NOT NULL,
	[roleId] [bigint] NOT NULL,
	[userId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC,
	[userId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Teams]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Teams](
	[companyId] [bigint] NOT NULL,
	[teamId] [bigint] NOT NULL,
	[userId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[teamId] ASC,
	[userId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_UserGroups]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_UserGroups](
	[companyId] [bigint] NOT NULL,
	[userId] [bigint] NOT NULL,
	[userGroupId] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[ctChangeType] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[userGroupId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTracker]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTracker](
	[mvccVersion] [bigint] NOT NULL,
	[userTrackerId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[modifiedDate] [datetime2](6) NULL,
	[sessionId] [nvarchar](200) NULL,
	[remoteAddr] [nvarchar](75) NULL,
	[remoteHost] [nvarchar](75) NULL,
	[userAgent] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[userTrackerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTrackerPath]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTrackerPath](
	[mvccVersion] [bigint] NOT NULL,
	[userTrackerPathId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userTrackerId] [bigint] NULL,
	[path_] [nvarchar](4000) NULL,
	[pathDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[userTrackerPathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViewCountEntry]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViewCountEntry](
	[companyId] [bigint] NOT NULL,
	[classNameId] [bigint] NOT NULL,
	[classPK] [bigint] NOT NULL,
	[viewCount] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[companyId] ASC,
	[classNameId] ASC,
	[classPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VirtualHost]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VirtualHost](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[virtualHostId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[layoutSetId] [bigint] NULL,
	[hostname] [nvarchar](200) NULL,
	[defaultVirtualHost] [bit] NULL,
	[languageId] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[virtualHostId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebDAVProps]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebDAVProps](
	[mvccVersion] [bigint] NOT NULL,
	[webDavPropsId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[props] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[webDavPropsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Website]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[websiteId] [bigint] NOT NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[url] [nvarchar](4000) NULL,
	[typeId] [bigint] NULL,
	[primary_] [bit] NULL,
	[lastPublishDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[websiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WikiNode]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiNode](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[nodeId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[name] [nvarchar](75) NULL,
	[description] [nvarchar](4000) NULL,
	[lastPostDate] [datetime2](6) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WikiPage]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiPage](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[pageId] [bigint] NOT NULL,
	[resourcePrimKey] [bigint] NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[nodeId] [bigint] NULL,
	[title] [nvarchar](255) NULL,
	[version] [float] NULL,
	[minorEdit] [bit] NULL,
	[content] [nvarchar](max) NULL,
	[summary] [nvarchar](4000) NULL,
	[format] [nvarchar](75) NULL,
	[head] [bit] NULL,
	[parentTitle] [nvarchar](255) NULL,
	[redirectTitle] [nvarchar](255) NULL,
	[lastPublishDate] [datetime2](6) NULL,
	[status] [int] NULL,
	[statusByUserId] [bigint] NULL,
	[statusByUserName] [nvarchar](75) NULL,
	[statusDate] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[pageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WikiPageResource]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiPageResource](
	[mvccVersion] [bigint] NOT NULL,
	[uuid_] [nvarchar](75) NULL,
	[resourcePrimKey] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[nodeId] [bigint] NULL,
	[title] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[resourcePrimKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowDefinitionLink]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowDefinitionLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[workflowDefinitionLinkId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[typePK] [bigint] NULL,
	[workflowDefinitionName] [nvarchar](75) NULL,
	[workflowDefinitionVersion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[workflowDefinitionLinkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowInstanceLink]    Script Date: 15-12-2021 13:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowInstanceLink](
	[mvccVersion] [bigint] NOT NULL,
	[ctCollectionId] [bigint] NOT NULL,
	[workflowInstanceLinkId] [bigint] NOT NULL,
	[groupId] [bigint] NULL,
	[companyId] [bigint] NULL,
	[userId] [bigint] NULL,
	[userName] [nvarchar](75) NULL,
	[createDate] [datetime2](6) NULL,
	[modifiedDate] [datetime2](6) NULL,
	[classNameId] [bigint] NULL,
	[classPK] [bigint] NULL,
	[workflowInstanceId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[workflowInstanceLinkId] ASC,
	[ctCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AnalyticsMessage] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AnnouncementsDelivery] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AnnouncementsEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AnnouncementsFlag] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetAutoTaggerEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetAutoTaggerEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetCategory] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetCategory] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetCategoryProperty] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetCategoryProperty] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetDisplayPageEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetDisplayPageEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetEntries_AssetCategories] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetEntries_AssetTags] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetEntryAssetCategoryRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetEntryAssetCategoryRel] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetEntryUsage] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetEntryUsage] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetListEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetListEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetListEntryAssetEntryRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetListEntryAssetEntryRel] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetListEntrySegmentsEntryRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetListEntrySegmentsEntryRel] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetListEntryUsage] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetListEntryUsage] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetTag] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetTag] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[AssetVocabulary] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[AssetVocabulary] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[BackgroundTask] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[BatchEngineExportTask] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[BatchEngineImportTask] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[BlogsEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[BlogsStatsUser] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[BrowserTracker] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Calendar] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CalendarBooking] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CalendarNotificationTemplate] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CalendarResource] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CIBookedQuantity] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CIReplenishmentItem] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CIWarehouse] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CIWarehouseItem] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ClassName_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CompanyInfo] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Contact_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CPDefinitionLocalization] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTAutoResolutionInfo] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTCollection] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTMessage] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTPreferences] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTProcess] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTSContent] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[CTSContent] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDLRecord] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDLRecordSet] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDLRecordSetVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDLRecordVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMContent] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMContent] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMDataProviderInstance] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMDataProviderInstance] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMDataProviderInstanceLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMDataProviderInstanceLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMFormInstance] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMFormInstance] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMFormInstanceRecord] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMFormInstanceRecord] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMFormInstanceRecordVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMFormInstanceRecordVersion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMFormInstanceReport] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMFormInstanceReport] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMFormInstanceVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMFormInstanceVersion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMStorageLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMStorageLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMStructure] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMStructure] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMStructureLayout] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMStructureLayout] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMStructureLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMStructureLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMStructureVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMStructureVersion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMTemplate] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMTemplate] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMTemplateLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMTemplateLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DDMTemplateVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DDMTemplateVersion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DepotAppCustomization] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DepotEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DepotEntryGroupRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DispatchLog] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DispatchTrigger] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLContent] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLContent] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFileEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLFileEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFileEntryMetadata] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLFileEntryMetadata] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFileEntryType] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLFileEntryType] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFileEntryTypes_DLFolders] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFileShortcut] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLFileShortcut] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFileVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLFileVersion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFileVersionPreview] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLFileVersionPreview] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DLFolder] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[DLFolder] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[EmailAddress] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ExpandoColumn] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ExpandoColumn] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[ExpandoRow] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ExpandoRow] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[ExpandoTable] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ExpandoTable] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[ExpandoValue] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ExpandoValue] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[ExportImportConfiguration] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FragmentCollection] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FragmentCollection] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[FragmentComposition] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FragmentComposition] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[FragmentEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FragmentEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[FragmentEntryLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FragmentEntryLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[FragmentEntryVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FragmentEntryVersion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[FriendlyURLEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FriendlyURLEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[FriendlyURLEntryLocalization] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FriendlyURLEntryLocalization] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[FriendlyURLEntryMapping] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[FriendlyURLEntryMapping] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Group_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Group_] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Groups_Orgs] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Groups_Roles] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Groups_UserGroups] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Image] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Image] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[JournalArticle] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[JournalArticle] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[JournalArticleLocalization] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[JournalArticleLocalization] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[JournalArticleResource] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[JournalArticleResource] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[JournalContentSearch] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[JournalContentSearch] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[JournalFeed] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[JournalFeed] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[JournalFolder] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[JournalFolder] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[KaleoAction] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoCondition] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoDefinition] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoDefinitionVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoInstance] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoInstanceToken] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoLog] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoNode] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoNotification] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoNotificationRecipient] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTask] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTaskAssignment] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTaskAssignmentInstance] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTaskForm] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTaskFormInstance] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTaskInstanceToken] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTimer] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTimerInstanceToken] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KaleoTransition] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KBArticle] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KBComment] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KBFolder] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[KBTemplate] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Layout] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Layout] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutBranch] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutClassedModelUsage] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutClassedModelUsage] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutFriendlyURL] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutFriendlyURL] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutPageTemplateCollection] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutPageTemplateCollection] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutPageTemplateEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutPageTemplateEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutPageTemplateStructure] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutPageTemplateStructure] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutPageTemplateStructureRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutPageTemplateStructureRel] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutPrototype] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutRevision] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutSEOEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutSEOSite] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutSet] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutSet] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[LayoutSetBranch] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[LayoutSetPrototype] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ListType] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Lock_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBBan] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBBan] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MBCategory] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBCategory] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MBDiscussion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBDiscussion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MBMailingList] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBMailingList] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MBMessage] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBMessage] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MBStatsUser] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBStatsUser] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MBThread] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBThread] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MBThreadFlag] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MBThreadFlag] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[MDRAction] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MDRRule] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MDRRuleGroup] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MDRRuleGroupInstance] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[MembershipRequest] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Organization_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Organization_] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[OrgGroupRole] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[OrgLabor] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PasswordPolicy] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PasswordPolicyRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PasswordTracker] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Phone] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PluginSetting] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PollsChoice] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PollsQuestion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PollsVote] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PortalPreferences] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Portlet] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PortletItem] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PortletPreferences] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[PortletPreferences] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[RatingsEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RatingsEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[RatingsStats] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RatingsStats] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[RecentLayoutBranch] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RecentLayoutRevision] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RecentLayoutSetBranch] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RedirectEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RedirectNotFoundEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Region] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Release_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RemoteAppEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Repository] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[RepositoryEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ResourceAction] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ResourcePermission] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[ResourcePermission] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Role_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Role_] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SegmentsEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SegmentsEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SegmentsEntryRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SegmentsEntryRel] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SegmentsEntryRole] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SegmentsEntryRole] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SegmentsExperience] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SegmentsExperience] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SegmentsExperiment] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SegmentsExperiment] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SegmentsExperimentRel] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SegmentsExperimentRel] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[ServiceComponent] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SiteFriendlyURL] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SiteNavigationMenu] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SiteNavigationMenuItem] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialActivity] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialActivity] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SocialActivityAchievement] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialActivityAchievement] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SocialActivityCounter] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialActivityCounter] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SocialActivityLimit] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialActivityLimit] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SocialActivitySet] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialActivitySet] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SocialActivitySetting] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialActivitySetting] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SocialRelation] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialRelation] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SocialRequest] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SocialRequest] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[StyleBookEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Subscription] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Subscription] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[SystemEvent] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[SystemEvent] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Team] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Team] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[TEST_CASE] ADD  DEFAULT ((100)) FOR [TIMEOUT]
GO
ALTER TABLE [dbo].[TEST_CASE_RUN_RESULT] ADD  DEFAULT ((0)) FOR [ATTEMPT_COUNT]
GO
ALTER TABLE [dbo].[TEST_STEP_RUN_RESULT] ADD  DEFAULT ((100)) FOR [BARGEIN_TIME]
GO
ALTER TABLE [dbo].[TEST_STEP_RUN_RESULT] ADD  DEFAULT ((0)) FOR [CONFIDENCE_LEVEL]
GO
ALTER TABLE [dbo].[TEST_STEP_RUN_RESULT] ADD  DEFAULT ((0)) FOR [MINIMUM_CONFIDENCE_LEVEL]
GO
ALTER TABLE [dbo].[TEST_SUITE] ADD  DEFAULT ((0)) FOR [RECORDING_PERCENTAGE]
GO
ALTER TABLE [dbo].[Ticket] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[TranslationEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[TrashEntry] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[TrashEntry] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[TrashVersion] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[TrashVersion] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[User_] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[User_] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[UserGroup] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[UserGroup] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[UserGroupGroupRole] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[UserGroupGroupRole] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[UserGroupRole] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[UserGroupRole] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[UserGroups_Teams] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[UserIdMapper] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[UserNotificationDelivery] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[UserNotificationEvent] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Users_Groups] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Users_Orgs] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Users_Roles] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Users_Teams] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[Users_UserGroups] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[UserTracker] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[UserTrackerPath] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[VirtualHost] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[VirtualHost] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[WebDAVProps] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[Website] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[WikiNode] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[WikiPage] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[WikiPageResource] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[WorkflowDefinitionLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[WorkflowDefinitionLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[WorkflowInstanceLink] ADD  DEFAULT ((0)) FOR [mvccVersion]
GO
ALTER TABLE [dbo].[WorkflowInstanceLink] ADD  DEFAULT ((0)) FOR [ctCollectionId]
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_CASE]  WITH CHECK ADD  CONSTRAINT [FK9C106EB2DD438876] FOREIGN KEY([DASHBOARD_ID])
REFERENCES [dbo].[DASHBOARD] ([ID])
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_CASE] CHECK CONSTRAINT [FK9C106EB2DD438876]
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_CASE]  WITH CHECK ADD  CONSTRAINT [FK9C106EB2ED9DD603] FOREIGN KEY([TEST_CASE_ID])
REFERENCES [dbo].[TEST_CASE] ([ID])
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_CASE] CHECK CONSTRAINT [FK9C106EB2ED9DD603]
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_SUITE]  WITH CHECK ADD  CONSTRAINT [FKE6E7D39656DC4591] FOREIGN KEY([TEST_SUITE_ID])
REFERENCES [dbo].[TEST_SUITE] ([ID])
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_SUITE] CHECK CONSTRAINT [FKE6E7D39656DC4591]
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_SUITE]  WITH CHECK ADD  CONSTRAINT [FKE6E7D396DD438876] FOREIGN KEY([DASHBOARD_ID])
REFERENCES [dbo].[DASHBOARD] ([ID])
GO
ALTER TABLE [dbo].[DASHBOARD_TEST_SUITE] CHECK CONSTRAINT [FKE6E7D396DD438876]
GO
ALTER TABLE [dbo].[FILE_MANAGER]  WITH CHECK ADD  CONSTRAINT [FKF52DF3CA936F8D3E] FOREIGN KEY([FOLDER_ID])
REFERENCES [dbo].[FOLDER] ([ID])
GO
ALTER TABLE [dbo].[FILE_MANAGER] CHECK CONSTRAINT [FKF52DF3CA936F8D3E]
GO
ALTER TABLE [dbo].[TEST_CASE]  WITH CHECK ADD  CONSTRAINT [FK617BFABD936F8D3E] FOREIGN KEY([FOLDER_ID])
REFERENCES [dbo].[FOLDER] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE] CHECK CONSTRAINT [FK617BFABD936F8D3E]
GO
ALTER TABLE [dbo].[TEST_CASE_EMAIL_ALERT_LEVEL]  WITH CHECK ADD  CONSTRAINT [FK50F6A15CE4309D2B] FOREIGN KEY([emailAlertLevels_ID])
REFERENCES [dbo].[EMAIL_ALERT_LEVEL] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE_EMAIL_ALERT_LEVEL] CHECK CONSTRAINT [FK50F6A15CE4309D2B]
GO
ALTER TABLE [dbo].[TEST_CASE_EMAIL_ALERT_LEVEL]  WITH CHECK ADD  CONSTRAINT [FK50F6A15CED9DD603] FOREIGN KEY([TEST_CASE_ID])
REFERENCES [dbo].[TEST_CASE] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE_EMAIL_ALERT_LEVEL] CHECK CONSTRAINT [FK50F6A15CED9DD603]
GO
ALTER TABLE [dbo].[TEST_CASE_MAKE_A_CALL_RETRY]  WITH CHECK ADD  CONSTRAINT [FK807421D4A45A147E] FOREIGN KEY([makeACallRetry_ID])
REFERENCES [dbo].[MAKE_A_CALL_RETRY] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE_MAKE_A_CALL_RETRY] CHECK CONSTRAINT [FK807421D4A45A147E]
GO
ALTER TABLE [dbo].[TEST_CASE_MAKE_A_CALL_RETRY]  WITH CHECK ADD  CONSTRAINT [FK807421D4ED9DD603] FOREIGN KEY([TEST_CASE_ID])
REFERENCES [dbo].[TEST_CASE] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE_MAKE_A_CALL_RETRY] CHECK CONSTRAINT [FK807421D4ED9DD603]
GO
ALTER TABLE [dbo].[TEST_CASE_RUN_RESULT]  WITH CHECK ADD  CONSTRAINT [FK3054AF33AFB8FA3C] FOREIGN KEY([TEST_CASE_FOLDER_ID])
REFERENCES [dbo].[FOLDER] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE_RUN_RESULT] CHECK CONSTRAINT [FK3054AF33AFB8FA3C]
GO
ALTER TABLE [dbo].[TEST_CASE_TEST_STEP]  WITH CHECK ADD  CONSTRAINT [FK4FE7F35795364B87] FOREIGN KEY([testSteps_ID])
REFERENCES [dbo].[TEST_STEP] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE_TEST_STEP] CHECK CONSTRAINT [FK4FE7F35795364B87]
GO
ALTER TABLE [dbo].[TEST_CASE_TEST_STEP]  WITH CHECK ADD  CONSTRAINT [FK4FE7F357ED9DD603] FOREIGN KEY([TEST_CASE_ID])
REFERENCES [dbo].[TEST_CASE] ([ID])
GO
ALTER TABLE [dbo].[TEST_CASE_TEST_STEP] CHECK CONSTRAINT [FK4FE7F357ED9DD603]
GO
ALTER TABLE [dbo].[TEST_MODULE]  WITH CHECK ADD  CONSTRAINT [FK43772B9936F8D3E] FOREIGN KEY([FOLDER_ID])
REFERENCES [dbo].[FOLDER] ([ID])
GO
ALTER TABLE [dbo].[TEST_MODULE] CHECK CONSTRAINT [FK43772B9936F8D3E]
GO
ALTER TABLE [dbo].[TEST_MODULE_TEST_STEP]  WITH CHECK ADD  CONSTRAINT [FKE51AA0538AD1CE43] FOREIGN KEY([TEST_MODULE_ID])
REFERENCES [dbo].[TEST_MODULE] ([ID])
GO
ALTER TABLE [dbo].[TEST_MODULE_TEST_STEP] CHECK CONSTRAINT [FKE51AA0538AD1CE43]
GO
ALTER TABLE [dbo].[TEST_MODULE_TEST_STEP]  WITH CHECK ADD  CONSTRAINT [FKE51AA05395364B87] FOREIGN KEY([testSteps_ID])
REFERENCES [dbo].[TEST_STEP] ([ID])
GO
ALTER TABLE [dbo].[TEST_MODULE_TEST_STEP] CHECK CONSTRAINT [FKE51AA05395364B87]
GO
ALTER TABLE [dbo].[TEST_SUITE_RUN_RESULT]  WITH CHECK ADD  CONSTRAINT [FKF741D84556DC4591] FOREIGN KEY([TEST_SUITE_ID])
REFERENCES [dbo].[TEST_SUITE] ([ID])
GO
ALTER TABLE [dbo].[TEST_SUITE_RUN_RESULT] CHECK CONSTRAINT [FKF741D84556DC4591]
GO
ALTER TABLE [dbo].[TEST_SUITE_SCHEDULE_ELEMENT]  WITH CHECK ADD  CONSTRAINT [FK64557A0856DC4591] FOREIGN KEY([TEST_SUITE_ID])
REFERENCES [dbo].[TEST_SUITE] ([ID])
GO
ALTER TABLE [dbo].[TEST_SUITE_SCHEDULE_ELEMENT] CHECK CONSTRAINT [FK64557A0856DC4591]
GO
ALTER TABLE [dbo].[TEST_SUITE_SCHEDULE_ELEMENT]  WITH CHECK ADD  CONSTRAINT [FK64557A08DE913E87] FOREIGN KEY([SCHEDULE_ELEMENT_ID])
REFERENCES [dbo].[SCHEDULE_ELEMENT] ([ID])
GO
ALTER TABLE [dbo].[TEST_SUITE_SCHEDULE_ELEMENT] CHECK CONSTRAINT [FK64557A08DE913E87]
GO
ALTER TABLE [dbo].[TEST_SUITE_TEST_CASE]  WITH CHECK ADD  CONSTRAINT [FK2D00D46956DC4591] FOREIGN KEY([TEST_SUITE_ID])
REFERENCES [dbo].[TEST_SUITE] ([ID])
GO
ALTER TABLE [dbo].[TEST_SUITE_TEST_CASE] CHECK CONSTRAINT [FK2D00D46956DC4591]
GO
ALTER TABLE [dbo].[TEST_SUITE_TEST_CASE]  WITH CHECK ADD  CONSTRAINT [FK2D00D469ED9DD603] FOREIGN KEY([TEST_CASE_ID])
REFERENCES [dbo].[TEST_CASE] ([ID])
GO
ALTER TABLE [dbo].[TEST_SUITE_TEST_CASE] CHECK CONSTRAINT [FK2D00D469ED9DD603]
GO

CREATE NONCLUSTERED INDEX [IX_DASH_LR_ORG] ON [dbo].[DASHBOARD]
(
	[LR_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_DASH_ORG]     ******/
CREATE NONCLUSTERED INDEX [IX_DASH_ORG] ON [dbo].[DASHBOARD]
(
	[ORG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_DASH_TC]     ******/
CREATE NONCLUSTERED INDEX [IX_DASH_TC] ON [dbo].[DASHBOARD_TEST_CASE]
(
	[DASHBOARD_ID] ASC,
	[TEST_CASE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_DASH_TS]     ******/
CREATE NONCLUSTERED INDEX [IX_DASH_TS] ON [dbo].[DASHBOARD_TEST_SUITE]
(
	[DASHBOARD_ID] ASC,
	[TEST_SUITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


/****** Object:  Index [TC_TEST_CASE_RUB_RESULT]     ******/
CREATE NONCLUSTERED INDEX [TC_TEST_CASE_RUB_RESULT] ON [dbo].[QOS]
(
	[TEST_CASE_RUN_RESULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


/****** Object:  Index [IX_4E88C02C]     ******/
CREATE NONCLUSTERED INDEX [IX_4E88C02C] ON [dbo].[REPORT_SCHEDULE]
(
	[uuid_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


/****** Object:  Index [FOLDER_ID]     ******/
CREATE NONCLUSTERED INDEX [FOLDER_ID] ON [dbo].[TEST_CASE]
(
	[FOLDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [LR_GROUP_ID]     ******/
CREATE NONCLUSTERED INDEX [LR_GROUP_ID] ON [dbo].[TEST_CASE]
(
	[LR_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [LR_ORG_ID]     ******/
CREATE NONCLUSTERED INDEX [LR_ORG_ID] ON [dbo].[TEST_CASE]
(
	[LR_ORG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [PLAN_TYPE]     ******/
CREATE NONCLUSTERED INDEX [PLAN_TYPE] ON [dbo].[TEST_CASE]
(
	[PLAN_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [CALLEE_WEB_TC_RUN_RESULT_ID]     ******/
CREATE NONCLUSTERED INDEX [CALLEE_WEB_TC_RUN_RESULT_ID] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[CALLEE_WEB_TC_RUN_RESULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [END_TIME]     ******/
CREATE NONCLUSTERED INDEX [END_TIME] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[END_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [FOLDER_ID]     ******/
CREATE NONCLUSTERED INDEX [FOLDER_ID] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[TEST_CASE_FOLDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [OLD_RUN]     ******/
CREATE NONCLUSTERED INDEX [OLD_RUN] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[OLD_RUN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [RESULT_MESSAGE]     ******/
CREATE NONCLUSTERED INDEX [RESULT_MESSAGE] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[RESULT_MESSAGE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [RESULT_TYPE]     ******/
CREATE NONCLUSTERED INDEX [RESULT_TYPE] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[RESULT_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [START_TIME]     ******/
CREATE NONCLUSTERED INDEX [START_TIME] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[START_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TC_FOLDER_ID]     ******/
CREATE NONCLUSTERED INDEX [TC_FOLDER_ID] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[TEST_CASE_FOLDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_CASE_CALLED_NUMBER]     ******/
CREATE NONCLUSTERED INDEX [TEST_CASE_CALLED_NUMBER] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[TEST_CASE_CALLED_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_CASE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_CASE_ID] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[TEST_CASE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_SUITE_RUN_RESULT_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_SUITE_RUN_RESULT_ID] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[TEST_SUITE_RUN_RESULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [testCaseModeType]     ******/
CREATE NONCLUSTERED INDEX [testCaseModeType] ON [dbo].[TEST_CASE_RUN_RESULT]
(
	[testCaseModeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_CASE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_CASE_ID] ON [dbo].[TEST_CASE_TEST_STEP]
(
	[TEST_CASE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_STEP_IDS]     ******/
CREATE NONCLUSTERED INDEX [TEST_STEP_IDS] ON [dbo].[TEST_CASE_TEST_STEP]
(
	[testSteps_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [ID]     ******/
CREATE NONCLUSTERED INDEX [ID] ON [dbo].[TEST_STEP]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IS_DELETED]     ******/
CREATE NONCLUSTERED INDEX [IS_DELETED] ON [dbo].[TEST_STEP]
(
	[IS_DELETED] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [STEP_NUMBER]     ******/
CREATE NONCLUSTERED INDEX [STEP_NUMBER] ON [dbo].[TEST_STEP]
(
	[STEP_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [RESULT_TYPE]     ******/
CREATE NONCLUSTERED INDEX [RESULT_TYPE] ON [dbo].[TEST_STEP_RUN_RESULT]
(
	[RESULT_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [ST_START_TIME]     ******/
CREATE NONCLUSTERED INDEX [ST_START_TIME] ON [dbo].[TEST_STEP_RUN_RESULT]
(
	[START_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [STEP_NUMBER]     ******/
CREATE NONCLUSTERED INDEX [STEP_NUMBER] ON [dbo].[TEST_STEP_RUN_RESULT]
(
	[STEP_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TC_TEST_CASE_RUN_RESULT]     ******/
CREATE NONCLUSTERED INDEX [TC_TEST_CASE_RUN_RESULT] ON [dbo].[TEST_STEP_RUN_RESULT]
(
	[TEST_CASE_RUN_RESULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_STEP_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_STEP_ID] ON [dbo].[TEST_STEP_RUN_RESULT]
(
	[TEST_STEP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [ACTIVE]     ******/
CREATE NONCLUSTERED INDEX [ACTIVE] ON [dbo].[TEST_SUITE]
(
	[ACTIVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [DAILY_RUN]     ******/
CREATE NONCLUSTERED INDEX [DAILY_RUN] ON [dbo].[TEST_SUITE]
(
	[DAILY_RUN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [END_DATE]     ******/
CREATE NONCLUSTERED INDEX [END_DATE] ON [dbo].[TEST_SUITE]
(
	[END_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IS_DELETED]     ******/
CREATE NONCLUSTERED INDEX [IS_DELETED] ON [dbo].[TEST_SUITE]
(
	[IS_DELETED] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [LAST_RUN]     ******/
CREATE NONCLUSTERED INDEX [LAST_RUN] ON [dbo].[TEST_SUITE]
(
	[LAST_RUN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [LR_GROUP_ID]     ******/
CREATE NONCLUSTERED INDEX [LR_GROUP_ID] ON [dbo].[TEST_SUITE]
(
	[LR_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [LR_ORG_ID]     ******/
CREATE NONCLUSTERED INDEX [LR_ORG_ID] ON [dbo].[TEST_SUITE]
(
	[LR_ORG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [PLAN_TYPE]     ******/
CREATE NONCLUSTERED INDEX [PLAN_TYPE] ON [dbo].[TEST_SUITE]
(
	[PLAN_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [RUN_DATE]     ******/
CREATE NONCLUSTERED INDEX [RUN_DATE] ON [dbo].[TEST_SUITE]
(
	[RUN_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [ID]     ******/
CREATE NONCLUSTERED INDEX [ID] ON [dbo].[TEST_SUITE_RUN_PLAN]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [START_TIME]     ******/
CREATE NONCLUSTERED INDEX [START_TIME] ON [dbo].[TEST_SUITE_RUN_PLAN]
(
	[START_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_SUITE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_SUITE_ID] ON [dbo].[TEST_SUITE_RUN_PLAN]
(
	[TEST_SUITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [END_DATE]     ******/
CREATE NONCLUSTERED INDEX [END_DATE] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[END_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [END_TIME]     ******/
CREATE NONCLUSTERED INDEX [END_TIME] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[END_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [LR_GROUP_ID]     ******/
CREATE NONCLUSTERED INDEX [LR_GROUP_ID] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[LR_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [LR_ORG_ID]     ******/
CREATE NONCLUSTERED INDEX [LR_ORG_ID] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[LR_ORG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [PLAN_TYPE]     ******/
CREATE NONCLUSTERED INDEX [PLAN_TYPE] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[PLAN_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [RUN_STATUS]     ******/
CREATE NONCLUSTERED INDEX [RUN_STATUS] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[RUN_STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [START_TIME]     ******/
CREATE NONCLUSTERED INDEX [START_TIME] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[START_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_SUITE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_SUITE_ID] ON [dbo].[TEST_SUITE_RUN_RESULT]
(
	[TEST_SUITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [GROUP_ID]     ******/
CREATE NONCLUSTERED INDEX [GROUP_ID] ON [dbo].[TEST_SUITE_RUNNING]
(
	[GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [ID]     ******/
CREATE NONCLUSTERED INDEX [ID] ON [dbo].[TEST_SUITE_RUNNING]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [START_TIME]     ******/
CREATE NONCLUSTERED INDEX [START_TIME] ON [dbo].[TEST_SUITE_RUNNING]
(
	[START_TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_SUITE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_SUITE_ID] ON [dbo].[TEST_SUITE_RUNNING]
(
	[TEST_SUITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [SCHEDULE_ELEMENT_ID]     ******/
CREATE NONCLUSTERED INDEX [SCHEDULE_ELEMENT_ID] ON [dbo].[TEST_SUITE_SCHEDULE_ELEMENT]
(
	[SCHEDULE_ELEMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_SUITE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_SUITE_ID] ON [dbo].[TEST_SUITE_SCHEDULE_ELEMENT]
(
	[TEST_SUITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


/****** Object:  Index [TEST_CASE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_CASE_ID] ON [dbo].[TEST_SUITE_TEST_CASE]
(
	[TEST_CASE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [TEST_SUITE_ID]     ******/
CREATE NONCLUSTERED INDEX [TEST_SUITE_ID] ON [dbo].[TEST_SUITE_TEST_CASE]
(
	[TEST_SUITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_PORT_USAGE_LOG_ORG_ID]    Script Date: 25/05/2022 08:08:43 ******/
CREATE NONCLUSTERED INDEX [IX_PORT_USAGE_LOG_ORG_ID] ON [dbo].[PORT_USAGE_LOG]
(
	[ORG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FOLDER_LR_GROUP_ID]    Script Date: 25/05/2022 08:13:35 ******/
CREATE NONCLUSTERED INDEX [IX_FOLDER_LR_GROUP_ID] ON [dbo].[FOLDER]
(
	[LR_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FOLDER_PLAN_TYPE]    Script Date: 25/05/2022 08:14:18 ******/
CREATE NONCLUSTERED INDEX [IX_FOLDER_PLAN_TYPE] ON [dbo].[FOLDER]
(
	[PLAN_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FOLDER_TYPE]    Script Date: 25/05/2022 08:14:50 ******/
CREATE NONCLUSTERED INDEX [IX_FOLDER_TYPE] ON [dbo].[FOLDER]
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FILE_MANAGER_LR_GROUP_ID]    Script Date: 25/05/2022 08:16:40 ******/
CREATE NONCLUSTERED INDEX [IX_FILE_MANAGER_LR_GROUP_ID] ON [dbo].[FILE_MANAGER]
(
	[LR_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_DISCOVER_IVR_lrOrgId]    Script Date: 25/05/2022 08:18:37 ******/
CREATE NONCLUSTERED INDEX [IX_DISCOVER_IVR_lrOrgId] ON [dbo].[DISCOVER_IVR]
(
	[lrOrgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

