create database Wish
USE [Wish]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT INTO [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin])
VALUES
(1, N'Adam', '123456', 1, 0),
(2, N'Anjolie', '654321', 0, 1),
(3, N'Ferris', '987654', 0, 1),
(4, N'Katell', '246813', 0, 0),
(5, N'Zahir', '135792', 1, 0),
(6, N'Conan', '864209', 1, 0),
(7, N'Cade', '357911', 1, 0),
(8, N'Micah', '202224', 0, 0),
(9, N'Rowan', '182736', 1, 1),
(10, N'Kirby', '112233', 1, 0),
(11, N'Tanisha', '445566', 0, 1),
(12, N'Howard', '778899', 0, 1),
(13, N'Tana', '101112', 0, 0),
(14, N'Hadassah', '131415', 1, 0),
(15, N'Echo', '161718', 1, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'GIÀY ADIDAS')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'GIÀY NIKE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'GIÀY BITI''S')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'GIÀY CONVERSE')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Giày thể thao', N'https://5.imimg.com/data5/SELLER/Default/2021/4/XL/PT/EA/96403645/adidas-battary-wt-red.jpg', 100.0000, N'Giày thể thao nam Adidas Sport Shoes Battery', N'Giày thể thao Adidas Sport Shoes Battery sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Giày chạy bộ', N'https://www.prokituk.com/media/catalog/product/cache/492fa7b0a954c582f49c6e3f2e151aab/n/o/nova_4.jpg', 120.0000, N'Giày Adidas Nova Run EE9266', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Giày du lịch', N'https://thethaochat.com/upload/fckeditor-1/image/nvbsport.com/san-pham-thumb/191/giay-the-thao-nam-adidas-neo-daily-20-white-db0160-0.jpg', 130.0000, N'GIẦY THỂ THAO NAM ADIDAS NEO DAILY 2.0 WHITE - DB0160', N'Textile PROBAR LOC là một thiết bị ổn định nhiệt dẻo được nhúng trong vòm đế giữa để kết nối bàn chân trước và gót chân. Nó cung cấp hiệu suất hỗ trợ và hỗ trợ vòm trong giai đoạn đẩy. Thiết bị này cho phép vòm bàn chân được hỗ trợ tốt hơn trong mỗi bước đi, do đó giảm bớt gánh nặng cho vòm bàn chân.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Giày Nike', N'https://product.hstatic.net/200000078815/product/dm0013-101_02_6522d81ba7f9472e8cc99718fb86481a_master.jpg', 140.0000, N'Giày Thể Thao Nam NIKE Air Max Dawn DM0013-101', N'Giày đi nhẹ, êm chân với lớp đệm êm ái, dày dặn. Tông màu giày là trắng làm chủ đạo, nên rất dễ để sử dụng trong mọi hoàn cảnh. Đế dày nên dành cho bạn nào có chiều cao khiêm tốn sẽ tôn lên được vóc dáng.', 2, 1) 
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Giày Nike 1A', N'https://cdn.tgdd.vn/Files/2021/02/03/1325290/top-10-doi-giay-the-thao-thoi-trang-nam-nike-duoc-ua-chuong-tai-viet-nam-202102031605130093.jpg', 150.0000, N'Giày Nike Air Jordan 4 White Red', N'Giày đi nhẹ, êm chân với lớp đệm êm ái, dày dặn. Tông màu giày là trắng làm chủ đạo, nên rất dễ để sử dụng trong mọi hoàn cảnh. Đế dày nên dành cho bạn nào có chiều cao khiêm tốn sẽ tôn lên được vóc dáng.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Giày Nike 2A', N'https://n2k.vn/wp-content/uploads/2022/12/z3981194040411_596298f5a4ed34429d18c66a8ed79090.jpg', 160.0000, N'Giày Nike Air Force One Custom Gucci', N'Giày đi nhẹ, êm chân với lớp đệm êm ái, dày dặn. Tông màu giày là trắng làm chủ đạo, nên rất dễ để sử dụng trong mọi hoàn cảnh. Đế dày nên dành cho bạn nào có chiều cao khiêm tốn sẽ tôn lên được vóc dáng.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Giày Adidas', N'https://giaysneaker.com.vn/public/media/giay-adidas-superstar-og-vintage-white-rep-11.jpg', 170.0000, N'GIÀY ADIDAS SUPERSTAR OG VINTAGE WHITE', N'Nhẹ nhàng tinh tế thiết kế kiểu nét riêng, độc đáo, cá tính cho nữ. Không còn ngần ngại khi mang đi học và đi chơi, độ êm mềm mại đỉnh chóp.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Giày Converse', N'https://cdn.tgdd.vn/Files/2022/04/02/1423499/huong-dan-order-giay-converse-o-nuoc-ngoai-cuc-de-202204020114320272.jpg', 150.0000, N'Giày Converse', N'Thiết kế năng động, khỏe khoắn kết hợp với nhiều loại chất liệu đa dạng đã giúp cho Converse ghi điểm với giới trẻ trên toàn thế giới.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Giày Bitis', N'https://product.hstatic.net/1000230642/product/dsmh03500trg__7__d2e1b4602c6141a994ff8e628dfddd73_grande.jpg', 180.0000, N'Giày Thể Thao Nam Biti''s Hunter X Festive DSMH03500', N'Giày thể thao nam bán chạy và tốt nhất. Nhờ sự kết hợp hoàn hảo giữa sự thoải mái và nhẹ nhàng, bạn sẽ dễ dàng hơn trong các bài tập thể dục hàng ngày hoặc những môn thể thao với nhịp độ cao.', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Giày Converse', N'https://giaydino.com/wp-content/uploads/2021/11/Converse-Run-Star-Hike-Giaydino.com_.jpg', 180.0000, N'Converse Run Star Hike ', N'Giày khá nhẹ và mềm, mang vào chân rất thoải mái. Phần đế được nâng cấp là một điểm cộng lớn về công năng và tính thẩm mỹ', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'New Trend Men Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', 150.0000, N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48', N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Mens Skid Resistant Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5f3fb6d1b2a7ef003f6bd8a4-large.jpg?cache_buster=c9295f971ce194c1e68f6144f11314c6', 165.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'NEW Spring White Shoes Men', N'https://canary.contestimg.wish.com/api/webimage/5d0235c9ae115f0be32755ef-large.jpg?cache_buster=fd2c105001ca1cbb03795818542906cc', 185.0000, N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear', N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Winter Outdoor Waterproof', N'https://canary.contestimg.wish.com/api/webimage/5d70b17d55d5981ab5789f86-large.jpg?cache_buster=19f34456a6b274b940c839db21c2ab51', 200.0000, N'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men''s Shoes', N'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men''s Shoes', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Men''s Fashion Casual Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a06d9e6a1c62df8877125-large.jpg?cache_buster=d17e757a3f8465edc71812b95b4b1a57', 100.0000, N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes', N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Mens Skid Resistant Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a02d1344e882b1a41bca4-large.jpg?cache_buster=bc4ce4d229ed4e42dbba614acb622899', 120.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Men''s Modern Classic Lace Up Lined', N'https://canary.contestimg.wish.com/api/webimage/5c9543744578cb33ad0f56cd-large.jpg?cache_buster=ed84658c453c742ad13b9d565566ed06', 100.0000, N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Men''s Outdoors Waterproof Boots Sports Shoes', N'https://canary.contestimg.wish.com/api/webimage/5e0db090b6383fa7bb0416ab-large.jpg?cache_buster=92297459781628185d780669109c00d6', 120.0000, N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)', 3, 7)
SET IDENTITY_INSERT [dbo].[product] OFF


select * from product