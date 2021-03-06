USE [WebsiteBanHang]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 4/14/2022 4:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nvarchar](100) NULL,
	[Slug] [varchar](50) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreateOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/14/2022 4:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avarta] [nchar](100) NULL,
	[Slug] [varchar](100) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[Deleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/14/2022 4:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ProductId] [int] NULL,
	[Price] [float] NULL,
	[Status] [int] NULL,
	[CreateOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/14/2022 4:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avartar] [nchar](100) NULL,
	[CategoryId] [int] NULL,
	[ShortDes] [nvarchar](100) NULL,
	[FullDescription] [nvarchar](500) NULL,
	[Price] [float] NULL,
	[PriceDiscount] [float] NULL,
	[TypeId] [int] NULL,
	[Slug] [varchar](50) NULL,
	[BrandId] [int] NULL,
	[Deleted] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/14/2022 4:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (1, N'Apple', N'apple.jpg', N'apple', 1, 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (2, N'Samsung', N'samsung.jpg', N'samsung', 1, 2, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (3, N'Xiaomi', N'xiaomi', N'xiaomi', 1, 3, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
INSERT [dbo].[Category] ([Id], [Name], [Avarta], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Điện Thoại', N'Phone.jpg                                                                                           ', N'dien-thoai', 1, 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avarta], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'Máy Tính Xách Tay', N'Laptop.jpg                                                                                          ', N'may-tinh', 1, 2, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avarta], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'Máy Tính Bảng', N'Ipad.jpg                                                                                            ', N'may-tinh-bang', 1, 3, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avarta], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (4, N'Phụ Kiện', N'Phukien.jpg                                                                                         ', N'phu-kien', 1, 4, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avarta], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (5, N'Đồng Hồ Thông Minh', N'donghothongminh.jpg                                                                                 ', N'dong-ho-thong-minh', 1, 5, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avarta], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (6, N'Đồng Hồ Cơ', N'donghothoitrang.jpg                                                                                 ', N'dong-ho-thoi-trang', 1, 6, 0, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avarta], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (7, N'Tai Nghe', N'Tainghe.jpg                                                                                         ', N'tai-nghe', 1, 7, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Iphone Xs', N'/Content/images/items_sanpham/img0.jpg                                                              ', 1, N'Mô tả người dùng', N'Mô tả đầu', 9200000, NULL, 1, N'iphoneXs', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'Iphone 11Pro', N'/Content/images/items_sanpham/iphonexs.jpg                                                          ', 1, N'Mô tà người dùng', N'Mô tả đầu', 13500000, NULL, 1, N'iphone11Pro', 1, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'Samsung S10 5G', N'/Content/images/items_sanpham/iphonexs.jpg                                                          ', 1, N'Mô tả người dùng', N'Mô tả đầu', 7320000, NULL, 2, N'samsungs105g', 2, 0, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:Giảm Giá Sốc, 2:Đề Xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
