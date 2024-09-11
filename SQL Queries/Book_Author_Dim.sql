USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Book_Author_Dim]    Script Date: 9/11/2024 11:48:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Book_Author_Dim](
	[pk_book_author_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[fk_author_id] [int] NULL,
	[fk_book_id] [int] NULL,
	[source_system_code] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NULL,
 CONSTRAINT [PK_Book_Author_Dim] PRIMARY KEY CLUSTERED 
(
	[pk_book_author_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Book_Author_Dim] ADD  CONSTRAINT [DF_Book_Author_Dim_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[Book_Author_Dim] ADD  CONSTRAINT [DF_Book_Author_Dim_is_current]  DEFAULT ((1)) FOR [is_current]
GO

ALTER TABLE [dbo].[Book_Author_Dim]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Dim_Author_Dim] FOREIGN KEY([fk_author_id])
REFERENCES [dbo].[Author_Dim] ([pk_author_id_sk])
GO

ALTER TABLE [dbo].[Book_Author_Dim] CHECK CONSTRAINT [FK_Book_Author_Dim_Author_Dim]
GO

ALTER TABLE [dbo].[Book_Author_Dim]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Dim_Book_Dim] FOREIGN KEY([fk_book_id])
REFERENCES [dbo].[Book_Dim] ([pk_book_id_sk])
GO

ALTER TABLE [dbo].[Book_Author_Dim] CHECK CONSTRAINT [FK_Book_Author_Dim_Book_Dim]
GO


