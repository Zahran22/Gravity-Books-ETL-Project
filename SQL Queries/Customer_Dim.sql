USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Customer_Dim]    Script Date: 9/11/2024 11:50:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer_Dim](
	[pk_customer_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[pk_customer_id_bk] [int] NULL,
	[First_Name] [varchar](200) NULL,
	[Last_Name] [varchar](200) NULL,
	[Email] [varchar](350) NULL,
	[Source_system_code] [int] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Customer_Dim] PRIMARY KEY CLUSTERED 
(
	[pk_customer_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer_Dim] ADD  CONSTRAINT [DF_Customer_Dim_start_date]  DEFAULT (getdate()) FOR [StartDate]
GO

ALTER TABLE [dbo].[Customer_Dim] ADD  CONSTRAINT [DF_Customer_Dim_is_current]  DEFAULT ((1)) FOR [is_current]
GO


