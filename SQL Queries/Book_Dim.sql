USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Book_Dim]    Script Date: 9/11/2024 11:48:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Book_Dim](
	[pk_book_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[pk_book_id_bk] [int] NULL,
	[title] [varchar](400) NULL,
	[isbn13] [varchar](13) NULL,
	[num_pages] [int] NULL,
	[language_id_bk] [int] NULL,
	[language_code] [varchar](8) NULL,
	[language_name] [varchar](50) NULL,
	[puplication_date] [date] NULL,
	[puplisher_id_bk] [int] NULL,
	[puplisher_name] [nvarchar](1000) NULL,
	[source_system_code] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NULL,
 CONSTRAINT [PK_Book_Dim] PRIMARY KEY CLUSTERED 
(
	[pk_book_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Book_Dim] ADD  CONSTRAINT [DF_Book_Dim_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[Book_Dim] ADD  CONSTRAINT [DF_Book_Dim_is_current]  DEFAULT ((1)) FOR [is_current]
GO


