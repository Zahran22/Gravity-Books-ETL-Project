USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Customer_address_Dim]    Script Date: 9/11/2024 11:49:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer_address_Dim](
	[pk_coustomer_address_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[fk_customer_id_bk] [int] NULL,
	[fk_address_id_bk] [int] NULL,
	[status_id_bk] [int] NULL,
	[address_status] [varchar](30) NULL,
	[source_system_code] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
 CONSTRAINT [PK_Customer_address_Dim] PRIMARY KEY CLUSTERED 
(
	[pk_coustomer_address_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer_address_Dim] ADD  CONSTRAINT [DF_Customer_address_Dim_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[Customer_address_Dim] ADD  CONSTRAINT [DF_Customer_address_Dim_is_current]  DEFAULT ((1)) FOR [is_current]
GO

ALTER TABLE [dbo].[Customer_address_Dim]  WITH CHECK ADD  CONSTRAINT [FK_Customer_address_Dim_Address_Dim] FOREIGN KEY([fk_customer_id_bk])
REFERENCES [dbo].[Address_Dim] ([pk_address_id_sk])
GO

ALTER TABLE [dbo].[Customer_address_Dim] CHECK CONSTRAINT [FK_Customer_address_Dim_Address_Dim]
GO

ALTER TABLE [dbo].[Customer_address_Dim]  WITH CHECK ADD  CONSTRAINT [FK_Customer_address_Dim_Customer_Dim] FOREIGN KEY([fk_customer_id_bk])
REFERENCES [dbo].[Customer_Dim] ([pk_customer_id_sk])
GO

ALTER TABLE [dbo].[Customer_address_Dim] CHECK CONSTRAINT [FK_Customer_address_Dim_Customer_Dim]
GO


