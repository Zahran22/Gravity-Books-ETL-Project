USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Sales_Fact]    Script Date: 9/11/2024 11:52:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sales_Fact](
	[pk_sales_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[fk_book_id] [int] NULL,
	[order_date] [date] NULL,
	[fk_customer] [int] NULL,
	[price] [decimal](5, 2) NULL,
	[line_id] [int] NULL,
	[fk_date_id] [int] NULL,
	[source_system_code] [int] NULL,
 CONSTRAINT [PK_Sales_Fact] PRIMARY KEY CLUSTERED 
(
	[pk_sales_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sales_Fact] ADD  CONSTRAINT [DF_Sales_Fact_source_system_code]  DEFAULT ((1)) FOR [source_system_code]
GO

ALTER TABLE [dbo].[Sales_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Fact_Book_Dim] FOREIGN KEY([fk_book_id])
REFERENCES [dbo].[Book_Dim] ([pk_book_id_sk])
GO

ALTER TABLE [dbo].[Sales_Fact] CHECK CONSTRAINT [FK_Sales_Fact_Book_Dim]
GO

ALTER TABLE [dbo].[Sales_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Fact_Customer_Dim] FOREIGN KEY([fk_customer])
REFERENCES [dbo].[Customer_Dim] ([pk_customer_id_sk])
GO

ALTER TABLE [dbo].[Sales_Fact] CHECK CONSTRAINT [FK_Sales_Fact_Customer_Dim]
GO


