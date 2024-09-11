USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Author_Dim]    Script Date: 9/11/2024 11:47:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Author_Dim](
	[pk_author_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[pk_author_id_bk] [int] NULL,
	[author_name] [varchar](400) NULL,
	[source_system_code] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Author_Dim] PRIMARY KEY CLUSTERED 
(
	[pk_author_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Author_Dim] ADD  CONSTRAINT [DF_Author_Dim_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[Author_Dim] ADD  CONSTRAINT [DF_Author_Dim_is_current]  DEFAULT ((1)) FOR [is_current]
GO


