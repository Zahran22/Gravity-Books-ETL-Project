USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Order_History_Fact]    Script Date: 9/11/2024 11:52:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order_History_Fact](
	[pk_order_history_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[fk_order_id] [int] NULL,
	[fk_date_id] [int] NULL,
	[fk_customer_id_BK] [int] NULL,
	[history_id_BK] [int] NULL,
	[status_id_BK] [int] NULL,
	[status_value] [varchar](50) NULL,
	[fk_date_order_recieve] [int] NULL,
	[fk_date_pending_deliver] [int] NULL,
	[fk_date_delivery_in_progress] [int] NULL,
	[fk_date_deliverd] [int] NULL,
	[fk_date_cancelled] [int] NULL,
	[fk_date_returned] [int] NULL,
	[fk_shipping_method_id_BK] [int] NULL,
	[cost] [decimal](6, 2) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NOT NULL,
	[source_system_code] [int] NULL,
 CONSTRAINT [PK_Order_History_Fact] PRIMARY KEY CLUSTERED 
(
	[pk_order_history_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Order_History_Fact] ADD  CONSTRAINT [DF_Order_History_Fact_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[Order_History_Fact] ADD  CONSTRAINT [DF_Order_History_Fact_is_current]  DEFAULT ((1)) FOR [is_current]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_Customer_Dim] FOREIGN KEY([fk_customer_id_BK])
REFERENCES [dbo].[Customer_Dim] ([pk_customer_id_sk])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_Customer_Dim]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_DimDate] FOREIGN KEY([fk_date_cancelled])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_DimDate]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_DimDate1] FOREIGN KEY([fk_date_deliverd])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_DimDate1]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_DimDate2] FOREIGN KEY([fk_date_delivery_in_progress])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_DimDate2]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_DimDate3] FOREIGN KEY([fk_date_id])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_DimDate3]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_DimDate4] FOREIGN KEY([fk_date_order_recieve])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_DimDate4]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_DimDate5] FOREIGN KEY([fk_date_pending_deliver])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_DimDate5]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_DimDate6] FOREIGN KEY([fk_date_returned])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_DimDate6]
GO

ALTER TABLE [dbo].[Order_History_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Fact_Shipping_Method_Dim] FOREIGN KEY([fk_shipping_method_id_BK])
REFERENCES [dbo].[Shipping_Method_Dim] ([pk_shipping_method_id_sk])
GO

ALTER TABLE [dbo].[Order_History_Fact] CHECK CONSTRAINT [FK_Order_History_Fact_Shipping_Method_Dim]
GO


