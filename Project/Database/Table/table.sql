USE [s16guest25]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[versions_id] [int] NOT NULL,
	[dev_release_id] [int] NOT NULL,
	[cust_release_id] [int] NOT NULL,
 CONSTRAINT [branch_pk] PRIMARY KEY CLUSTERED 
(
	[versions_id] ASC,
	[dev_release_id] ASC,
	[cust_release_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[company_id] [int] NOT NULL,
	[company_name] [varchar](100) NOT NULL,
	[zip_code_id] [int] NOT NULL,
	[users_id] [int] NOT NULL,
 CONSTRAINT [PK__Company__3E2672350257E355] PRIMARY KEY CLUSTERED 
(
	[company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cust_Release]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cust_Release](
	[cust_release_id] [int] NOT NULL,
	[cust_release_date] [date] NOT NULL,
	[cust_release_type] [varchar](50) NOT NULL,
	[cust_release_num] [decimal](3, 1) NOT NULL,
 CONSTRAINT [PK__Cust_Rel__626F412E71D2AD50] PRIMARY KEY CLUSTERED 
(
	[cust_release_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cust_Release_has_Feature]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cust_Release_has_Feature](
	[cust_release_id] [int] NOT NULL,
	[feature_id] [int] NOT NULL,
 CONSTRAINT [PK_Cust_Release_has_Feature] PRIMARY KEY CLUSTERED 
(
	[cust_release_id] ASC,
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dev_Release]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dev_Release](
	[dev_release_id] [int] NOT NULL,
	[dev_release_date] [date] NOT NULL,
 CONSTRAINT [PK__Dev_Rele__0CF79332FD94E2C7] PRIMARY KEY CLUSTERED 
(
	[dev_release_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Download]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Download](
	[download_id] [int] NOT NULL,
	[download_date] [varchar](25) NOT NULL,
	[cust_release_id] [int] NOT NULL,
 CONSTRAINT [PK__Download__2EDDE1CD1EB0318F] PRIMARY KEY CLUSTERED 
(
	[download_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feature](
	[feature_id] [int] NOT NULL,
	[feature_num] [varchar](25) NOT NULL,
	[feature_desc] [varchar](500) NOT NULL,
 CONSTRAINT [PK__Feature__7906CBD759D3B37E] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[phone_id] [int] NOT NULL,
	[phone_num] [nchar](10) NOT NULL,
	[phone_type] [varchar](4) NOT NULL,
	[users_id] [int] NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platforms]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platforms](
	[platforms_id] [tinyint] NOT NULL,
	[platforms_name] [varchar](25) NOT NULL,
	[products_id] [int] NOT NULL,
 CONSTRAINT [PK__Platform__B8DB30345F14A340] PRIMARY KEY CLUSTERED 
(
	[platforms_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[products_id] [int] NOT NULL,
	[products_name] [varchar](25) NOT NULL,
	[products_desc] [text] NOT NULL,
 CONSTRAINT [PK__Products__D5706EBC1B7E9104] PRIMARY KEY CLUSTERED 
(
	[products_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[users_id] [int] NOT NULL,
	[users_name] [varchar](25) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[download_id] [int] NOT NULL,
 CONSTRAINT [PK__Users__EAA7D14BCC9A3C5B] PRIMARY KEY CLUSTERED 
(
	[users_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Versions]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versions](
	[versions_id] [int] NOT NULL,
	[versions_num] [decimal](5, 1) NOT NULL,
	[products_id] [int] NOT NULL,
 CONSTRAINT [PK__Versions__546A071EE0AE9F8F] PRIMARY KEY CLUSTERED 
(
	[versions_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zip_Code]    Script Date: 5/7/2016 5:02:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zip_Code](
	[zip_code_id] [int] NOT NULL,
	[city] [varchar](25) NOT NULL,
	[state_code] [varchar](2) NOT NULL,
	[zip_code] [int] NOT NULL,
	[street] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Zip_Code__A402926E93659905] PRIMARY KEY CLUSTERED 
(
	[zip_code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Cust_Release] FOREIGN KEY([cust_release_id])
REFERENCES [dbo].[Cust_Release] ([cust_release_id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Cust_Release]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Dev_Release] FOREIGN KEY([dev_release_id])
REFERENCES [dbo].[Dev_Release] ([dev_release_id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Dev_Release]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Versions] FOREIGN KEY([versions_id])
REFERENCES [dbo].[Versions] ([versions_id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Versions]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Users] FOREIGN KEY([users_id])
REFERENCES [dbo].[Users] ([users_id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Users]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Zip_Code] FOREIGN KEY([zip_code_id])
REFERENCES [dbo].[Zip_Code] ([zip_code_id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Zip_Code]
GO
ALTER TABLE [dbo].[Cust_Release_has_Feature]  WITH CHECK ADD  CONSTRAINT [FK__Cust_Rele__cust___5165187F] FOREIGN KEY([cust_release_id])
REFERENCES [dbo].[Cust_Release] ([cust_release_id])
GO
ALTER TABLE [dbo].[Cust_Release_has_Feature] CHECK CONSTRAINT [FK__Cust_Rele__cust___5165187F]
GO
ALTER TABLE [dbo].[Cust_Release_has_Feature]  WITH CHECK ADD  CONSTRAINT [FK__Cust_Rele__featu__52593CB8] FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Cust_Release_has_Feature] CHECK CONSTRAINT [FK__Cust_Rele__featu__52593CB8]
GO
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_Download_Cust_Release] FOREIGN KEY([cust_release_id])
REFERENCES [dbo].[Cust_Release] ([cust_release_id])
GO
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_Download_Cust_Release]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_Users] FOREIGN KEY([users_id])
REFERENCES [dbo].[Users] ([users_id])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_Users]
GO
ALTER TABLE [dbo].[Platforms]  WITH CHECK ADD  CONSTRAINT [FK_Platforms_Products] FOREIGN KEY([products_id])
REFERENCES [dbo].[Products] ([products_id])
GO
ALTER TABLE [dbo].[Platforms] CHECK CONSTRAINT [FK_Platforms_Products]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Download] FOREIGN KEY([download_id])
REFERENCES [dbo].[Download] ([download_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Download]
GO
ALTER TABLE [dbo].[Versions]  WITH CHECK ADD  CONSTRAINT [FK_Versions_Products] FOREIGN KEY([products_id])
REFERENCES [dbo].[Products] ([products_id])
GO
ALTER TABLE [dbo].[Versions] CHECK CONSTRAINT [FK_Versions_Products]
GO
