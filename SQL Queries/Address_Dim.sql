USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Address_Dim]    Script Date: 9/11/2024 11:46:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Address_Dim](
	[pk_address_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[pk_address_id_bk] [int] NULL,
	[street_number] [varchar](10) NULL,
	[street_name] [varchar](200) NULL,
	[city] [varchar](100) NULL,
	[country_id_bk] [int] NULL,
	[country_name] [varchar](200) NULL,
	[source_system_code] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Address_Dim] PRIMARY KEY CLUSTERED 
(
	[pk_address_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Address_Dim] ADD  CONSTRAINT [DF_Address_Dim_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[Address_Dim] ADD  CONSTRAINT [DF_Address_Dim_is_current]  DEFAULT ((1)) FOR [is_current]
GO


