USE [ShoeStore]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/27/2021 1:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maChiTietHD] [bigint] IDENTITY(1,1) NOT NULL,
	[maGiay] [bigint] NOT NULL,
	[soLuongMua] [int] NOT NULL,
	[maHoaDon] [bigint] NOT NULL,
	[daMua] [bit] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[maChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/27/2021 1:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[tenDangNhap] [nvarchar](50) NOT NULL,
	[matKhau] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[tenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giay]    Script Date: 12/27/2021 1:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giay](
	[maGiay] [bigint] IDENTITY(1,1) NOT NULL,
	[tenGiay] [nvarchar](200) NULL,
	[soLuongTon] [bigint] NULL,
	[gia] [bigint] NULL,
	[maLoai] [bigint] NULL,
	[anh] [nvarchar](150) NULL,
	[size] [nvarchar](50) NULL,
	[mau] [nvarchar](50) NULL,
	[moTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_Giay] PRIMARY KEY CLUSTERED 
(
	[maGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/27/2021 1:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [bigint] IDENTITY(1,1) NOT NULL,
	[maKH] [bigint] NOT NULL,
	[ngayMua] [datetime] NULL,
	[daMua] [bit] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/27/2021 1:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [bigint] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[diaChi] [nvarchar](150) NULL,
	[soDienThoai] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tenDangNhap] [nvarchar](50) NULL,
	[matKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 12/27/2021 1:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[maLoai] [bigint] IDENTITY(1,1) NOT NULL,
	[tenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (10004, 9, 2, 10002, 1)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (10005, 10, 4, 10002, 1)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (10006, 8, 10, 10003, 0)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (10007, 8, 10, 10002, 0)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (10008, 9, 10, 10003, 0)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (10011, 10, 10, 10003, 1)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (20011, 3, 1, 20005, 1)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (20012, 3, 4, 20006, 1)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (20013, 3, 5, 20007, 1)
GO
INSERT [dbo].[ChiTietHoaDon] ([maChiTietHD], [maGiay], [soLuongMua], [maHoaDon], [daMua]) VALUES (20014, 3, 1, 20007, 1)
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
INSERT [dbo].[DangNhap] ([tenDangNhap], [matKhau]) VALUES (N'admin', N'e10adc3949ba59abbe56e057f20f883e')
GO
SET IDENTITY_INSERT [dbo].[Giay] ON 
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (3, N'Giày Nike LeBron James x Air Force 1 ‘Strive For Greatness’ DC8877-200', 30, 237, 1, N'1.png', N'43', N'Xám', N'Được thiết kế bởi Bruce Kilgore vào năm 1982 với ý tưởng đặt tên từ chiếc chuyên cơ chuyên chở tổng thống mỹ AIR FORCE ONE , AF1 đã nhanh chóng trở thành đôi giày mang tính cách mạng trong giới sneaker, sản phẩm được bán hết trong một thời gian kỷ lục. Cho dù đã gần 40 năm trôi qua NIKE AIR FORCE 1 vẫn đem lại hàng trăm triệu USD hàng năm cho NIKE.')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (8, N'Giày Timberland 6 Inch Premium Waterproof Boots ‘Wheat Nubuck’ 5BAE3SH5DF30A6GS', 30, 190, 1, N'2.png', N'44', N'Nâu', N'Timberland là một thương hiệu dẫn đầu toàn cầu về kỹ thuật, thiết kế với các sản phẩm giày dép, áo quần, các mặt hàng thời trang nói chung cho người tiêu dùng về khả năng chịu đựng ngoài trời và độ bền của sản phẩm.')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (9, N'Giày Timberland Waterville 6-Inch Waterproof Boots ‘Black Nubuck’ DC619SH82C90F5GS', 62, 242, 2, N'3.png', N'39', N'Đen', N'Timberland là một thương hiệu dẫn đầu toàn cầu về kỹ thuật, thiết kế với các sản phẩm giày dép, áo quần, các mặt hàng thời trang nói chung cho người tiêu dùng về khả năng chịu đựng ngoài trời và độ bền của sản phẩm.')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (10, N'Giày Vans Authentic Mule ‘Red’ VN0A54F7JV61', 12, 152, 2, N'4.png', N'38', N'Đỏ', N'Vans Authentic Mule ‘Red’ hiện đã có sẵn tại Shoes Store, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (11, N'Giày Nike Air Jordan 1 HIGH GS ‘Dark Mocha’ 575441-105', 10, 99, 1, N'5.png', N'44', N'Nâu', N'Nike Air Jordan 1 với lịch sử hơn 30 năm luôn được nhìn nhận như một trong những dòng sản phẩm thành công nhất của Nike. Nike Jordan 1 luôn bán hết một cách nhanh chóng ngay từ khi ra mắt đến nay, luôn là sản phẩm được các tín đồ thời trang chú ý hàng đầu. Air Jordan được đặt dựa theo ngôi sao bóng rổ lừng danh Michael Jordan – huyền thoại của NBA.')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (12, N'Giày nữ FILA Disruptor 3 ‘White’ FS1HTB1222X', 56, 120, 2, N'6.jpg', N'41', N'Trắng', N'Có một điều không thể phủ nhận được đó là độ hot của những đôi Sneaker của thương hiệu Fila. Được thiết kế theo phong cách hầm hố nhưng vẫn tùy biến để phù hợp với dáng người Châu Á, đôi sneaker Fila “chất lừ” đã lên ngôi khiến cho bất kì ai cũng muốn sở hữu.')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (13, N'Giày Nike Phantom GT Club TF ‘Black’ CK8469-090', 3, 159, 4, N'7.png', N'40', N'Đen', N'Nike Phantom GT Club TF ‘Black’hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (14, N'Giày Nike Mercurial Superfly 8 Club TF ‘Black’ CV0955-090', 22, 149, 4, N'8.png', N'42', N'Đen', N'Nike Mercurial Superfly 8 Club TF ‘Black’ hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (15, N'Giày nam adidas X 19.3 TF ‘Royal Blue White’ EG7-155', 56, 124, 4, N'9.jpg', N'43', N'Xanh lam', N'Adidas X 19.3 TF ‘Royal Blue White’ hiện đã có sẵn tại Shoe Store, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (16, N'Giày Comme des Garcons Play x Converse Chuck Taylor All Star 70 Hi Black 150204C', 120, 299, 2, N'10.png', N'41', N'Đen', N'Comme Des Garcons là thương hiệu quen thuộc đối với mọi tín đồ thời trang thế giới. Tất cả các thiết kế của Comme Des Garcons sở hữu phong cách phá cách, độc lạ nên được rất nhiều người ưa chuộng. Sự kết hợp giữa hai thương hiệu Converse và Comme Des Garçons đã tọa nên dòng sản phẩm nổi tiếng Giày Converse Comme des Garçons Play x Chuck 70 High Black được cả thế giới đón nhận nhiệt tình.')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (24, N'Giày Air Jordan 1 Mid ‘Barcelona Sweater’ DC7294-600', 100, 400, 1, N'giay-nike-air-jordan-1-mid-barcelona-sweater-dc7294-600-5.png', N'41', N'Đỏ', N'Giày Air Jordan 1 Mid ‘Barcelona Sweater’ DC7294-600 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (25, N'Giày Air Jordan 1 High Element Gore-Tex ‘Light Bone’ DB2889-100', 100, 1000, 1, N'Air-Jordan-1-High-Element-Gore-Tex-Light-Bone.png', N'41', N'Xám', N'Giày Air Jordan 1 High Element Gore-Tex ‘Light Bone’ DB2889-100 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (26, N'Giày Air Jordan 1 High Zoom Comfort ‘Gold Laser’ DQ0659-700', 69, 300, 1, N'httpshypebeast.com20219air-jordan-1-high-zoom-cmft-gold-laser-dq0659-700-release-date-4.png', N'41', N'Nâu', N'Giày Air Jordan 1 High Zoom Comfort ‘Gold Laser’ DQ0659-700 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (27, N'Giày Converse Pro Leather High GS ‘Roswell Rayguns’ 271168C', 75, 70, 2, N'httpswww.footlocker.hkenpconverse-pro-leather-grade-school-shoes-106172v316700974104searchCategoryall-3.png', N'38', N'Đen', N'Giày Converse Pro Leather High GS ‘Roswell Rayguns’ 271168C hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (28, N'Giày Timberland Premium 6 Inch GS Boot ‘Stiefel In Pink’ TB-0A2GREN971', 156, 210, 1, N'Timberland-6-Inch-Premium-Stiefel-In-Pink-300x300.png', N'37', N'Hồng nhạt', N'Giày Timberland Premium 6 Inch GS Boot ‘Stiefel In Pink’ TB-0A2GREN971 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (29, N'Giày Nike SB Dunk High X Gundam ‘Unicorn-RX-0’ DH7717-100', 120, 400, 2, N'Nike-SB-Dunk-High-X-Gundam-Unicorn-RX-0.png', N'36', N'Trắng', N'Giày Nike SB Dunk High X Gundam ‘Unicorn-RX-0’ DH7717-100 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (30, N'Giày Vans SK8-Low “Red/White Checkerboard” VN0A4UUK4W91', 22, 90, 2, N'httpswww.skroutz.grs26617065Vans-Sk8-Low-Unisex-Sneaker-CE9ACF8CCEBACEBACEB9CEBDCEBF-VN0A4UUK4W91.html-3.png', N'37', N'Đỏ', N'Giày Vans SK8-Low “Red/White Checkerboard” VN0A4UUK4W91 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (31, N'Dép adidas Adilette Slide ‘White Silver Metallic’ GX0036', 11, 60, 3, N'httpsauthentic-shoes.comproductsadidas-santiago-mini-backpack-cm3839-1-1.png', N'39', N'Trắng', N'Dép adidas Adilette Slide ‘White Silver Metallic’ GX0036 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (32, N'Dép Jordan Break Slide “Black” AR6374-100', 100, 119, 1, N'AR6374-100-1.png', N'37', N'Đen', N'Dép Jordan Break Slide “Black” AR6374-100 hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [soLuongTon], [gia], [maLoai], [anh], [size], [mau], [moTa]) VALUES (33, N'Dép Nike Wmns TANJUN Sandal 882694-602', 139, 149, 1, N'dep-nike-wmns-tanjun-sandal-882694-602.jpg', N'42', N'Cam', N'<p>D&eacute;p Nike Wmns TANJUN Sandal 882694-602 hiện đ&atilde; c&oacute; sẵn tại Shoe Store với mức gi&aacute; hấp dẫn, đừng bỏ lỡ cơ hội của m&igrave;nh nh&eacute;!</p>
')
GO
SET IDENTITY_INSERT [dbo].[Giay] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKH], [ngayMua], [daMua]) VALUES (10002, 2, CAST(N'2021-12-01T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKH], [ngayMua], [daMua]) VALUES (10003, 1, CAST(N'2021-12-01T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKH], [ngayMua], [daMua]) VALUES (10004, 1, CAST(N'2021-12-10T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKH], [ngayMua], [daMua]) VALUES (20005, 1, CAST(N'2021-12-18T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKH], [ngayMua], [daMua]) VALUES (20006, 1, CAST(N'2021-12-18T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKH], [ngayMua], [daMua]) VALUES (20007, 1, CAST(N'2021-12-18T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [diaChi], [soDienThoai], [email], [tenDangNhap], [matKhau]) VALUES (1, N'Võ Xuân An', N'Huế', N'967964426', N'logothanlong159@gmail.com', N'voxuanan', N'e10adc3949ba59abbe56e057f20f883e')
GO
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [diaChi], [soDienThoai], [email], [tenDangNhap], [matKhau]) VALUES (2, N'An Đẹp Trai', N'116 Đống Đa Phường Đức Giang Quận Long Biên Thành phố Hà Nội', N'967964421', N'voxuanan0307@gmail.com', N'voxuanan0307', N'e10adc3949ba59abbe56e057f20f883e')
GO
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [diaChi], [soDienThoai], [email], [tenDangNhap], [matKhau]) VALUES (10003, N'Chúa Tể Java', N'777 Nguyễn Huệ Xã Nậm Kè Huyện Mường Nhé Tỉnh Điện Biên', N'967964444', N'god@gmail.com', N'god', N'e10adc3949ba59abbe56e057f20f883e')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 
GO
INSERT [dbo].[Loai] ([maLoai], [tenLoai]) VALUES (1, N'Men')
GO
INSERT [dbo].[Loai] ([maLoai], [tenLoai]) VALUES (2, N'Women')
GO
INSERT [dbo].[Loai] ([maLoai], [tenLoai]) VALUES (3, N'Casual')
GO
INSERT [dbo].[Loai] ([maLoai], [tenLoai]) VALUES (4, N'Running')
GO
INSERT [dbo].[Loai] ([maLoai], [tenLoai]) VALUES (5, N'Accessories')
GO
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Giay] FOREIGN KEY([maGiay])
REFERENCES [dbo].[Giay] ([maGiay])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Giay]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD  CONSTRAINT [FK_Giay_Loai] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Loai] ([maLoai])
GO
ALTER TABLE [dbo].[Giay] CHECK CONSTRAINT [FK_Giay_Loai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
