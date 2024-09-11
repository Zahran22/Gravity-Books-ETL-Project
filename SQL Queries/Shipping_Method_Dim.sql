USE [Gravity Books DWH]
GO

/****** Object:  Table [dbo].[Shipping_Method_Dim]    Script Date: 9/11/2024 11:53:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Shipping_Method_Dim](
	[pk_shipping_method_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[pk_shipping_method_id_bk] [int] NULL,
	[shipping_method_name] [varchar](100) NULL,
	[cost] [decimal](6, 2) NULL,
	[source_system_code] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [int] NULL,
 CONSTRAINT [PK_Shipping_Method_Dim] PRIMARY KEY CLUSTERED 
(
	[pk_shipping_method_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Shipping_Method_Dim] ADD  CONSTRAINT [DF_Shipping_Method_Dim_start_date]  DEFAULT (getdate()) FOR [start_date]
GO

ALTER TABLE [dbo].[Shipping_Method_Dim] ADD  CONSTRAINT [DF_Shipping_Method_Dim_is_current]  DEFAULT ((1)) FOR [is_current]
GO


